package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2097:String = "";
      
      private var var_2156:String = "";
      
      private var var_2495:String = "";
      
      private var var_2524:Number = 0;
      
      private var var_2523:Number = 0;
      
      private var var_2521:Number = 0;
      
      private var var_2522:Number = 0;
      
      private var var_2504:Boolean = false;
      
      private var var_2505:Boolean = false;
      
      private var var_2502:Boolean = false;
      
      private var var_2503:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2097 = param2;
         this.var_2156 = param3;
         this.var_2495 = param4;
         this.var_2524 = param5;
         this.var_2523 = param6;
         this.var_2521 = param7;
         this.var_2522 = param8;
         this.var_2504 = param9;
         this.var_2505 = param10;
         this.var_2502 = param11;
         this.var_2503 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2097;
      }
      
      public function get canvasId() : String
      {
         return this.var_2156;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2495;
      }
      
      public function get screenX() : Number
      {
         return this.var_2524;
      }
      
      public function get screenY() : Number
      {
         return this.var_2523;
      }
      
      public function get localX() : Number
      {
         return this.var_2521;
      }
      
      public function get localY() : Number
      {
         return this.var_2522;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2504;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2505;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2502;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2503;
      }
   }
}
