package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_163:Stage;
      
      private static var var_348:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_908:Boolean = true;
      
      private static var var_141:DisplayObject;
      
      private static var var_1662:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_163 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_141)
            {
               var_163.removeChild(var_141);
               var_163.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_163.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_163.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_163.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_908 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_348;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_348 = param1;
         if(var_348)
         {
            if(var_141)
            {
               var_141.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_141)
         {
            var_141.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_908)
         {
            _loc1_ = var_1662[_type];
            if(_loc1_)
            {
               if(var_141)
               {
                  var_163.removeChild(var_141);
               }
               else
               {
                  var_163.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_163.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_163.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_163.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_141 = _loc1_;
               var_163.addChild(var_141);
            }
            else
            {
               if(var_141)
               {
                  var_163.removeChild(var_141);
                  var_163.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_163.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_163.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_163.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_141 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_384:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_880:
                  case MouseCursorType.const_286:
                  case MouseCursorType.const_1833:
                  case MouseCursorType.const_1913:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_908 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1662[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_141)
         {
            var_141.x = param1.stageX - 2;
            var_141.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_348 = false;
               Mouse.show();
            }
            else
            {
               var_348 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_141 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_348 = false;
         }
      }
   }
}
