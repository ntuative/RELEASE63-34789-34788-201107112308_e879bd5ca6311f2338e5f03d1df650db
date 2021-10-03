package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1924:IID;
      
      private var var_1153:Boolean;
      
      private var var_1270:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1924 = param1;
         this.var_1270 = new Array();
         this.var_1153 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1924;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1153;
      }
      
      public function get receivers() : Array
      {
         return this.var_1270;
      }
      
      public function dispose() : void
      {
         if(!this.var_1153)
         {
            this.var_1153 = true;
            this.var_1924 = null;
            while(this.var_1270.length > 0)
            {
               this.var_1270.pop();
            }
            this.var_1270 = null;
         }
      }
   }
}
