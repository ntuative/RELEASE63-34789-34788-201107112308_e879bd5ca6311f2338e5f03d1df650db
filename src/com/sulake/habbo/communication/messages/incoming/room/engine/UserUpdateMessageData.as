package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_184:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_2443:Number = 0;
      
      private var var_2442:Number = 0;
      
      private var var_2441:Number = 0;
      
      private var var_2439:Number = 0;
      
      private var var_473:int = 0;
      
      private var var_2416:int = 0;
      
      private var var_363:Array;
      
      private var var_2440:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_363 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_184 = param3;
         this.var_185 = param4;
         this.var_2443 = param5;
         this.var_473 = param6;
         this.var_2416 = param7;
         this.var_2442 = param8;
         this.var_2441 = param9;
         this.var_2439 = param10;
         this.var_2440 = param11;
         this.var_363 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_184;
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function get localZ() : Number
      {
         return this.var_2443;
      }
      
      public function get targetX() : Number
      {
         return this.var_2442;
      }
      
      public function get targetY() : Number
      {
         return this.var_2441;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2439;
      }
      
      public function get dir() : int
      {
         return this.var_473;
      }
      
      public function get dirHead() : int
      {
         return this.var_2416;
      }
      
      public function get method_6() : Boolean
      {
         return this.var_2440;
      }
      
      public function get actions() : Array
      {
         return this.var_363.slice();
      }
   }
}
