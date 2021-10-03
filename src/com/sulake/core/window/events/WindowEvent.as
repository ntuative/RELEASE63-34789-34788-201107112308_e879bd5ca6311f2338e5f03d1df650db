package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1909:String = "WE_DESTROY";
      
      public static const const_352:String = "WE_DESTROYED";
      
      public static const const_1738:String = "WE_OPEN";
      
      public static const const_1779:String = "WE_OPENED";
      
      public static const const_1861:String = "WE_CLOSE";
      
      public static const const_2018:String = "WE_CLOSED";
      
      public static const const_1777:String = "WE_FOCUS";
      
      public static const const_377:String = "WE_FOCUSED";
      
      public static const const_1875:String = "WE_UNFOCUS";
      
      public static const const_1797:String = "WE_UNFOCUSED";
      
      public static const const_1742:String = "WE_ACTIVATE";
      
      public static const const_625:String = "WE_ACTIVATED";
      
      public static const const_1836:String = "WE_DEACTIVATE";
      
      public static const const_564:String = "WE_DEACTIVATED";
      
      public static const const_355:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_536:String = "WE_UNSELECT";
      
      public static const const_517:String = "WE_UNSELECTED";
      
      public static const const_1734:String = "WE_LOCK";
      
      public static const const_2032:String = "WE_LOCKED";
      
      public static const const_1824:String = "WE_UNLOCK";
      
      public static const const_1765:String = "WE_UNLOCKED";
      
      public static const const_979:String = "WE_ENABLE";
      
      public static const const_297:String = "WE_ENABLED";
      
      public static const const_867:String = "WE_DISABLE";
      
      public static const const_247:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_438:String = "WE_RELOCATED";
      
      public static const const_1257:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1914:String = "WE_MINIMIZE";
      
      public static const const_1846:String = "WE_MINIMIZED";
      
      public static const const_1829:String = "WE_MAXIMIZE";
      
      public static const const_1907:String = "WE_MAXIMIZED";
      
      public static const const_1759:String = "WE_RESTORE";
      
      public static const const_2007:String = "WE_RESTORED";
      
      public static const const_525:String = "WE_CHILD_ADDED";
      
      public static const const_422:String = "WE_CHILD_REMOVED";
      
      public static const const_229:String = "WE_CHILD_RELOCATED";
      
      public static const const_160:String = "WE_CHILD_RESIZED";
      
      public static const const_337:String = "WE_CHILD_ACTIVATED";
      
      public static const const_607:String = "WE_PARENT_ADDED";
      
      public static const const_1840:String = "WE_PARENT_REMOVED";
      
      public static const const_1769:String = "WE_PARENT_RELOCATED";
      
      public static const const_514:String = "WE_PARENT_RESIZED";
      
      public static const const_1393:String = "WE_PARENT_ACTIVATED";
      
      public static const const_148:String = "WE_OK";
      
      public static const const_637:String = "WE_CANCEL";
      
      public static const const_116:String = "WE_CHANGE";
      
      public static const const_627:String = "WE_SCROLL";
      
      public static const const_118:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_758:IWindow;
      
      protected var var_1151:Boolean;
      
      protected var var_512:Boolean;
      
      protected var var_166:Boolean;
      
      protected var var_757:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_758 = param3;
         _loc5_.var_512 = param4;
         _loc5_.var_166 = false;
         _loc5_.var_757 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_758;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_512;
      }
      
      public function recycle() : void
      {
         if(this.var_166)
         {
            throw new Error("Event already recycled!");
         }
         this.var_758 = null;
         this._window = null;
         this.var_166 = true;
         this.var_1151 = false;
         this.var_757.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1151;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1151 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1151;
      }
      
      public function stopPropagation() : void
      {
         this.var_1151 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1151 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_512 + " window: " + this._window + " }";
      }
   }
}
