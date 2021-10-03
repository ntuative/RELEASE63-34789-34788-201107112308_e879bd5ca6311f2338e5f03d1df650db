package com.sulake.habbo.room.object
{
   public class RoomFloorRectangle
   {
       
      
      private var var_1100:int;
      
      private var _top:int;
      
      private var _right:int;
      
      private var var_1101:int;
      
      private var var_2816:Number;
      
      public function RoomFloorRectangle(param1:int, param2:int, param3:int, param4:int, param5:Number)
      {
         super();
         this.var_1100 = param1;
         this._top = param2;
         this._right = param3;
         this.var_1101 = param4;
         this.var_2816 = param5;
      }
      
      public function get left() : int
      {
         return this.var_1100;
      }
      
      public function get top() : int
      {
         return this._top;
      }
      
      public function get right() : int
      {
         return this._right;
      }
      
      public function get bottom() : int
      {
         return this.var_1101;
      }
      
      public function get altitude() : Number
      {
         return this.var_2816;
      }
   }
}
