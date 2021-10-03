package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_172:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_814:int = 2;
      
      public static const const_993:int = 3;
      
      public static const const_1782:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1982:String = "";
      
      private var var_2447:int;
      
      private var var_2529:int = 0;
      
      private var var_2528:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_251:Array;
      
      private var var_1653:int = 0;
      
      private var var_2489:String = "";
      
      private var var_2490:int = 0;
      
      private var var_2488:int = 0;
      
      private var var_1974:Boolean = false;
      
      private var var_1981:String = "";
      
      private var var_2275:Boolean = false;
      
      private var var_2664:Boolean = false;
      
      private var var_2660:Boolean = true;
      
      private var var_1398:int = 0;
      
      private var var_2659:Boolean = false;
      
      private var var_2661:Boolean = false;
      
      private var var_2662:Boolean = false;
      
      private var var_2657:Boolean = false;
      
      private var var_2663:Boolean = false;
      
      private var var_2665:Boolean = false;
      
      private var var_2658:int = 0;
      
      private var var_1973:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_251 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1982 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1982;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2447 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2447;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2529 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2529;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2528 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2528;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_251 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_251;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1653 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1653;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2489 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2489;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2664 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2664;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1398 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1398;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2659 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2659;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2661 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2661;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2662 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2662;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2657 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2657;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2663 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2663;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2665 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2665;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2658 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2658;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2660 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2660;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1973 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1973;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2490 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2490;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2488 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2488;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1974 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1974;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1981 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1981;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2275 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2275;
      }
   }
}
