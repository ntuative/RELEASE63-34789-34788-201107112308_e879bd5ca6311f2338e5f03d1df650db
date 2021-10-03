package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3098:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_627:IWindowContext;
      
      private var var_1395:IMouseDraggingService;
      
      private var var_1391:IMouseScalingService;
      
      private var var_1393:IMouseListenerService;
      
      private var var_1390:IFocusManagerService;
      
      private var var_1392:IToolTipAgentService;
      
      private var var_1394:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3098 = 0;
         this._root = param2;
         this.var_627 = param1;
         this.var_1395 = new WindowMouseDragger(param2);
         this.var_1391 = new WindowMouseScaler(param2);
         this.var_1393 = new WindowMouseListener(param2);
         this.var_1390 = new FocusManager(param2);
         this.var_1392 = new WindowToolTipAgent(param2);
         this.var_1394 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1395 != null)
         {
            this.var_1395.dispose();
            this.var_1395 = null;
         }
         if(this.var_1391 != null)
         {
            this.var_1391.dispose();
            this.var_1391 = null;
         }
         if(this.var_1393 != null)
         {
            this.var_1393.dispose();
            this.var_1393 = null;
         }
         if(this.var_1390 != null)
         {
            this.var_1390.dispose();
            this.var_1390 = null;
         }
         if(this.var_1392 != null)
         {
            this.var_1392.dispose();
            this.var_1392 = null;
         }
         if(this.var_1394 != null)
         {
            this.var_1394.dispose();
            this.var_1394 = null;
         }
         this._root = null;
         this.var_627 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1395;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1391;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1393;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1390;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1392;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1394;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
