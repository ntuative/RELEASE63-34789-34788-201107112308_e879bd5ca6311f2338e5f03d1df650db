package com.sulake.habbo.ui.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.profiler.tracking.TrackedBitmapData;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_1094:int = 3;
      
      public static const const_668:int = 2;
      
      public static const const_436:int = 1;
      
      public static const const_270:int = 0;
      
      public static const const_91:int = 39;
      
      private static const const_1130:int = 150;
      
      private static const const_1129:int = 250;
       
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _window:IWindowContainer;
      
      private var var_91:IBitmapWrapperWindow;
      
      private var var_41:IWindowContainer;
      
      private var _region:IRegionWindow;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_2893:int = 0;
      
      private var _state:int = -1;
      
      private var var_2894:BitmapData;
      
      private var var_2091:BitmapData;
      
      private var var_2896:BitmapData;
      
      private var var_2092:BitmapData;
      
      private var var_2093:BitmapData;
      
      private var var_2892:BitmapData;
      
      private var var_2897:BitmapData;
      
      private var var_2895:int = 30;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         this._widget = param1;
         this._windowManager = param2;
         this._assetLibrary = param4;
         this.var_41 = param3;
         this.var_2894 = (this._assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         this.var_2091 = (this._assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         this.var_2896 = (this._assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         this.var_2092 = (this._assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         this.var_2093 = (this._assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         this.var_2892 = (this._assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         this.var_2897 = (this._assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         this.var_91 = this._windowManager.createWindow("chat_history_bg","",HabboWindowType.const_381,HabboWindowStyle.const_30,HabboWindowParam.const_64,new Rectangle(0,0,param3.width,param3.height - const_91),null,0,0) as IBitmapWrapperWindow;
         this.var_41.addChild(this.var_91);
         this._window = this._windowManager.createWindow("chat_pulldown","",HabboWindowType.const_71,HabboWindowStyle.const_30,0 | 0,new Rectangle(0,this.var_41.height - const_91,param3.width,const_91),null,0) as IWindowContainer;
         this.var_41.addChild(this._window);
         this._region = this._windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_325,HabboWindowStyle.const_47,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_91),null,0) as IRegionWindow;
         if(this._region != null)
         {
            this._region.background = true;
            this._region.mouseThreshold = 0;
            this._region.addEventListener(WindowMouseEvent.const_45,this.onPulldownMouseDown);
            this.var_41.addChild(this._region);
            this._region.toolTipCaption = "${chat.history.drag.tooltip}";
            this._region.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         this._window.buildFromXML(_loc5_.content as XML);
         this._window.addEventListener(WindowMouseEvent.const_45,this.onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.mouseThreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_55,this.onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_45,this.onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_25,this.onCloseButtonMouseOut);
         }
         this._window.background = true;
         this._window.color = 0;
         this._window.mouseThreshold = 0;
         this.state = const_270;
         this.buildWindowGraphics();
      }
      
      public function dispose() : void
      {
         if(this._region != null)
         {
            this._region.dispose();
            this._region = null;
         }
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_91 != null)
         {
            this.var_91.dispose();
            this.var_91 = null;
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(this.state)
         {
            case const_668:
               this.var_91.blend += param1 / const_1129;
               this._window.blend += param1 / const_1129;
               if(this._window.blend >= 1)
               {
                  this.state = const_436;
               }
               break;
            case const_1094:
               this.var_91.blend -= param1 / const_1130;
               this._window.blend -= param1 / const_1130;
               if(this._window.blend <= 0)
               {
                  this.state = const_270;
               }
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == this._state)
         {
            return;
         }
         switch(param1)
         {
            case const_436:
               if(this._state == const_270)
               {
                  this.state = const_668;
               }
               else
               {
                  if(this._window == null || this.var_91 == null)
                  {
                     return;
                  }
                  this._window.visible = true;
                  this.var_91.visible = true;
                  this._region.visible = true;
                  this._state = param1;
               }
               break;
            case const_270:
               if(this._window == null || this.var_91 == null)
               {
                  return;
               }
               this._window.visible = false;
               this.var_91.visible = false;
               this._region.visible = false;
               this._state = param1;
               break;
            case const_668:
               if(this._window == null || this.var_91 == null)
               {
                  return;
               }
               this._window.blend = 0;
               this.var_91.blend = 0;
               this._window.visible = true;
               this.var_91.visible = true;
               this._state = param1;
               break;
            case const_1094:
               if(this._window == null || this.var_91 == null)
               {
                  return;
               }
               this._window.blend = 1;
               this.var_91.blend = 1;
               this._state = param1;
               break;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(this._window != null)
         {
            this._window.x = 0;
            this._window.y = this.var_41.height - const_91;
            this._window.width = this.var_41.width;
         }
         if(this._region != null)
         {
            this._region.x = 0;
            this._region.y = this.var_41.height - const_91;
            this._region.width = this.var_41.width - this.var_2895;
         }
         if(this.var_91 != null)
         {
            this.var_91.rectangle = this.var_41.rectangle;
            this.var_91.height -= const_91;
         }
         this.buildWindowGraphics();
      }
      
      private function buildWindowGraphics() : void
      {
         var width:int = 0;
         var height:int = 0;
         var state:int = 0;
         var destBgBitmap:BitmapData = null;
         var destGripLBitmap:BitmapData = null;
         var destGripRBitmap:BitmapData = null;
         if(this._window == null)
         {
            return;
         }
         if(this.var_2893 == this._window.width)
         {
            return;
         }
         this.var_2893 = this._window.width;
         var barBg:IBitmapWrapperWindow = this._window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var barX:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var barGripL:IBitmapWrapperWindow = this._window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var barGripR:IBitmapWrapperWindow = this._window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var barHandle:IBitmapWrapperWindow = this._window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         var gripMargin:int = 5;
         if(barX != null && barHandle != null)
         {
            barHandle.bitmap = this.var_2896;
            barHandle.disposesBitmap = false;
            barX.bitmap = this.var_2092;
            barX.disposesBitmap = false;
            this.var_2895 = this._window.width - barX.x;
         }
         barGripL.width = barHandle.x - gripMargin;
         barGripL.x = 0;
         barGripR.x = barHandle.x + barHandle.width + gripMargin;
         barGripR.width = barX.x - gripMargin - barGripR.x;
         if(barGripL.width < 0)
         {
            barGripL.width = 0;
         }
         if(barGripR.width < 0)
         {
            barGripR.width = 0;
         }
         state = 0;
         if(barBg != null && barGripL != null && barGripR != null)
         {
            try
            {
               state = 1;
               width = barBg.width;
               height = barBg.height;
               if(width > 0 && height > 0)
               {
                  destBgBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_2894,destBgBitmap);
                  barBg.disposesBitmap = true;
                  barBg.bitmap = destBgBitmap;
               }
               state = 2;
               width = barGripL.width;
               height = barGripL.height;
               if(width > 0 && height > 0)
               {
                  destGripLBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_2091,destGripLBitmap);
                  barGripL.disposesBitmap = true;
                  barGripL.bitmap = destGripLBitmap;
               }
               state = 3;
               width = barGripR.width;
               height = barGripR.height;
               if(width > 0 && height > 0)
               {
                  destGripRBitmap = new TrackedBitmapData(this,width,height);
                  this.tileBitmapHorz(this.var_2091,destGripRBitmap);
                  barGripR.disposesBitmap = true;
                  barGripR.bitmap = destGripRBitmap;
               }
            }
            catch(e:Error)
            {
               throw new Error(e.message + " width:" + width + " height:" + height + " state:" + state,e.errorID);
            }
         }
         if(this.var_91 == null)
         {
            return;
         }
         this.var_91.bitmap = this.var_2897;
         this.var_91.disposesBitmap = false;
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:Point = new Point();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_ + 1)
         {
            _loc4_.x = _loc5_ * param1.width;
            param2.copyPixels(param1,param1.rect,_loc4_);
            _loc5_++;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(this._widget != null)
         {
            this._widget.onPulldownMouseDown(param1);
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(this._widget != null)
         {
            this._widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_2093;
         }
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_2092;
         }
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_2892;
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(this._window == null)
         {
            return;
         }
         if(!this._window.visible)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.disposesBitmap = false;
            _loc2_.bitmap = this.var_2093;
         }
      }
   }
}
