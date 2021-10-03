package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_184:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_473:int = 0;
      
      private var var_540:int = 0;
      
      private var var_661:int = 0;
      
      private var var_199:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_199 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_199)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_199)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_199)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_184;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_184 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_185 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_473;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_473 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_540;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_540 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_661;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_661 = param1;
         }
      }
   }
}
