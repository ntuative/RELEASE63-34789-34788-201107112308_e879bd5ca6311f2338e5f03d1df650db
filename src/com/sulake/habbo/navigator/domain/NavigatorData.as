package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2089:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_231:MsgWithRequestId;
      
      private var var_710:RoomEventData;
      
      private var var_2884:Boolean;
      
      private var var_2886:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2564:int;
      
      private var var_298:GuestRoomData;
      
      private var var_1090:PublicRoomShortData;
      
      private var var_2883:int;
      
      private var var_2879:Boolean;
      
      private var var_2880:int;
      
      private var var_2888:Boolean;
      
      private var var_2088:int;
      
      private var var_2885:Boolean;
      
      private var var_1464:Array;
      
      private var var_1639:Array;
      
      private var var_2889:int;
      
      private var var_1638:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1346:Boolean;
      
      private var var_2887:int;
      
      private var var_2882:Boolean;
      
      private var var_2881:int = 0;
      
      private var var_2087:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1464 = new Array();
         this.var_1639 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_298 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_298 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1090 = null;
         this.var_298 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1090 = param1.publicSpace;
            this.var_710 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_710 != null)
         {
            this.var_710.dispose();
            this.var_710 = null;
         }
         if(this.var_1090 != null)
         {
            this.var_1090.dispose();
            this.var_1090 = null;
         }
         if(this.var_298 != null)
         {
            this.var_298.dispose();
            this.var_298 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_298 != null)
         {
            this.var_298.dispose();
         }
         this.var_298 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_710 != null)
         {
            this.var_710.dispose();
         }
         this.var_710 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_2087 = param1.ad;
         this.var_1346 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_1346 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_1346 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_231 == null)
         {
            return;
         }
         this.var_231.dispose();
         this.var_231 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2087 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2087;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_231 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_231 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_231 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_710;
      }
      
      public function get avatarId() : int
      {
         return this.var_2564;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2884;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2886;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_298;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1090;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2879;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2880;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2088;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2888;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2887;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2883;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2885;
      }
      
      public function get adIndex() : int
      {
         return this.var_2881;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2882;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2564 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2880 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2879 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2884 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2886 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2888 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2088 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2887 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2883 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2885 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2881 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2882 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1464 = param1;
         this.var_1639 = new Array();
         for each(_loc2_ in this.var_1464)
         {
            if(_loc2_.visible)
            {
               this.var_1639.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1464;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1639;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2889 = param1.limit;
         this.var_1638 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1638 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_298.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_298 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_298.flatId;
         return this.var_2088 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1638 >= this.var_2889;
      }
      
      public function startLoading() : void
      {
         this.var_1346 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1346;
      }
   }
}
