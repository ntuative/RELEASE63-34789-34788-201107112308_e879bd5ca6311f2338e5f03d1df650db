package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2637:Number = 0.0;
      
      private var var_2636:Number = 0.0;
      
      private var var_2635:Number = 0.0;
      
      private var var_2634:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2637 = param1;
         this.var_2636 = param2;
         this.var_2635 = param3;
         this.var_2634 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2637;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2636;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2635;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2634;
      }
   }
}
