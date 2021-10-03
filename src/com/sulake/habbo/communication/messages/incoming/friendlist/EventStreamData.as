package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_1916:uint = 0;
      
      public static const const_1787:uint = 1;
      
      public static const const_1770:uint = 2;
      
      public static const const_2227:int = 0;
      
      public static const const_2261:int = 1;
      
      public static const LINK_TARGET_VISIT_ROOM:int = 2;
      
      public static const const_2274:int = 3;
       
      
      private var _id:int;
      
      private var var_2643:int;
      
      private var var_2647:String;
      
      private var var_2641:String;
      
      private var var_2648:String;
      
      private var var_2645:String;
      
      private var var_2644:int;
      
      private var var_2642:int;
      
      private var var_2646:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2643 = param2;
         this.var_2647 = param3;
         this.var_2641 = param4;
         this.var_2648 = param5;
         this.var_2645 = param6;
         this.var_2644 = param7;
         this.var_2642 = param8;
         this.var_2646 = parse(param2,param9);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_1916:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_1787:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_1770:
               _loc3_.achievementCode = param2.readString();
         }
         return _loc3_;
      }
      
      public function get actionId() : int
      {
         return this.var_2643;
      }
      
      public function get accountId() : String
      {
         return this.var_2647;
      }
      
      public function get accountName() : String
      {
         return this.var_2641;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_2645;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2644;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2642;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2646;
      }
      
      public function get accountGender() : String
      {
         return this.var_2648;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
