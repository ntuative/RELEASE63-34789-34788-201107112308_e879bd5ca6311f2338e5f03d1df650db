package com.sulake.habbo.ui.widget.infostand
{
   import flash.utils.Dictionary;
   
   public class CommandConfiguration
   {
       
      
      private var var_2340:Array;
      
      private var var_1283:Dictionary;
      
      public function CommandConfiguration(param1:Array, param2:Array)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.var_1283 = new Dictionary();
         super();
         this.var_2340 = param1;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            this.var_1283[_loc4_] = true;
            _loc3_++;
         }
      }
      
      public function get allCommandIds() : Array
      {
         return this.var_2340;
      }
      
      public function isEnabled(param1:int) : Boolean
      {
         return this.var_1283[param1] != null;
      }
   }
}
