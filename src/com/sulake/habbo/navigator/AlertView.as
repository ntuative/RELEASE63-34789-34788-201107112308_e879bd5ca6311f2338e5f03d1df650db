package com.sulake.habbo.navigator
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class AlertView implements IDisposable
   {
      
      private static var var_707:Dictionary = new Dictionary();
       
      
      private var _navigator:HabboNavigator;
      
      protected var var_316:IFrameWindow;
      
      protected var var_1152:String;
      
      protected var _title:String;
      
      protected var _disposed:Boolean;
      
      public function AlertView(param1:HabboNavigator, param2:String, param3:String = null)
      {
         super();
         this._navigator = param1;
         this.var_1152 = param2;
         this._title = param3;
      }
      
      public static function findAlertView(param1:IWindow) : AlertView
      {
         var _loc2_:* = null;
         if(var_707 != null)
         {
            for each(_loc2_ in var_707)
            {
               if(_loc2_.var_316 == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function show() : void
      {
         var _loc1_:AlertView = var_707[this.var_1152] as AlertView;
         if(_loc1_ != null)
         {
            _loc1_.dispose();
         }
         this.var_316 = this.getAlertWindow();
         if(this._title != null)
         {
            this.var_316.caption = this._title;
         }
         this.setupAlertWindow(this.var_316);
         var _loc2_:Rectangle = Util.getLocationRelativeTo(this.var_316.desktop,this.var_316.width,this.var_316.height);
         this.var_316.x = _loc2_.x;
         this.var_316.y = _loc2_.y;
         var_707[this.var_1152] = this;
         this.var_316.activate();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         if(false)
         {
            var_707[this.var_1152] = null;
         }
         this._disposed = true;
         if(this.var_316 != null)
         {
            this.var_316.destroy();
            this.var_316 = null;
         }
         this._navigator = null;
      }
      
      function setupAlertWindow(param1:IFrameWindow) : void
      {
      }
      
      function onClose(param1:WindowMouseEvent) : void
      {
         this.dispose();
      }
      
      private function getAlertWindow() : IFrameWindow
      {
         var _loc1_:IFrameWindow = this._navigator.getXmlWindow(this.var_1152,2) as IFrameWindow;
         var _loc2_:IWindow = _loc1_.findChildByTag("close");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClose);
         }
         return _loc1_;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get navigator() : HabboNavigator
      {
         return this._navigator;
      }
   }
}
