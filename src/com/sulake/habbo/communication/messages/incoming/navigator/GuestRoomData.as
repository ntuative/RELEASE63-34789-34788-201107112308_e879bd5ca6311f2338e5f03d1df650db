package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_372:int;
      
      private var var_802:Boolean;
      
      private var var_999:String;
      
      private var _ownerName:String;
      
      private var var_2611:int;
      
      private var var_2402:int;
      
      private var var_2652:int;
      
      private var var_1782:String;
      
      private var var_2656:int;
      
      private var var_2609:Boolean;
      
      private var var_810:int;
      
      private var var_1445:int;
      
      private var var_2653:String;
      
      private var var_935:Array;
      
      private var var_2655:RoomThumbnailData;
      
      private var var_2651:Boolean;
      
      private var var_2654:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_935 = new Array();
         super();
         this.var_372 = param1.readInteger();
         this.var_802 = param1.readBoolean();
         this.var_999 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2611 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this.var_2652 = param1.readInteger();
         this.var_1782 = param1.readString();
         this.var_2656 = param1.readInteger();
         this.var_2609 = param1.readBoolean();
         this.var_810 = param1.readInteger();
         this.var_1445 = param1.readInteger();
         this.var_2653 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_935.push(_loc4_);
            _loc3_++;
         }
         this.var_2655 = new RoomThumbnailData(param1);
         this.var_2651 = param1.readBoolean();
         this.var_2654 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get event() : Boolean
      {
         return this.var_802;
      }
      
      public function get roomName() : String
      {
         return this.var_999;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2611;
      }
      
      public function get userCount() : int
      {
         return this.var_2402;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2652;
      }
      
      public function get description() : String
      {
         return this.var_1782;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2656;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2609;
      }
      
      public function get score() : int
      {
         return this.var_810;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2653;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2655;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2651;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2654;
      }
   }
}
