package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1323:int = 1;
      
      public static const const_991:int = 2;
      
      public static const const_925:int = 3;
      
      public static const const_1996:int = 4;
       
      
      private var _index:int;
      
      private var var_2616:String;
      
      private var var_2619:String;
      
      private var var_2614:Boolean;
      
      private var var_2617:String;
      
      private var var_1027:String;
      
      private var var_2618:int;
      
      private var var_2402:int;
      
      private var _type:int;
      
      private var var_2615:String;
      
      private var var_1030:GuestRoomData;
      
      private var var_1031:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2616 = param1.readString();
         this.var_2619 = param1.readString();
         this.var_2614 = param1.readInteger() == 1;
         this.var_2617 = param1.readString();
         this.var_1027 = param1.readString();
         this.var_2618 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1323)
         {
            this.var_2615 = param1.readString();
         }
         else if(this._type == const_925)
         {
            this.var_1031 = new PublicRoomData(param1);
         }
         else if(this._type == const_991)
         {
            this.var_1030 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1030 != null)
         {
            this.var_1030.dispose();
            this.var_1030 = null;
         }
         if(this.var_1031 != null)
         {
            this.var_1031.dispose();
            this.var_1031 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2616;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2619;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2614;
      }
      
      public function get picText() : String
      {
         return this.var_2617;
      }
      
      public function get picRef() : String
      {
         return this.var_1027;
      }
      
      public function get folderId() : int
      {
         return this.var_2618;
      }
      
      public function get tag() : String
      {
         return this.var_2615;
      }
      
      public function get userCount() : int
      {
         return this.var_2402;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1030;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1031;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1323)
         {
            return 0;
         }
         if(this.type == const_991)
         {
            return this.var_1030.maxUserCount;
         }
         if(this.type == const_925)
         {
            return this.var_1031.maxUsers;
         }
         return 0;
      }
   }
}
