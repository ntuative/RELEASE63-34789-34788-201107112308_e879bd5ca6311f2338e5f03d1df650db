package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1246:String = "M";
      
      public static const const_1760:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_184:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_473:int = 0;
      
      private var _name:String = "";
      
      private var var_1718:int = 0;
      
      private var var_990:String = "";
      
      private var _figure:String = "";
      
      private var var_2530:String = "";
      
      private var var_2447:int;
      
      private var var_2529:int = 0;
      
      private var var_2526:String = "";
      
      private var var_2527:int = 0;
      
      private var var_2528:int = 0;
      
      private var var_2569:String = "";
      
      private var var_199:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_199 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_1718;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_1718 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_990;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_990 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_199)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2530;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2530 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2447;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2447 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2529;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2529 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2526;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2526 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2527;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2527 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2528;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2528 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2569;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2569 = param1;
         }
      }
   }
}
