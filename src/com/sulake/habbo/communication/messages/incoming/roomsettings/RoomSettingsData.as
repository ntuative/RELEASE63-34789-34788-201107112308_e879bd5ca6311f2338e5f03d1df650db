package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_582:int = 0;
      
      public static const const_219:int = 1;
      
      public static const const_128:int = 2;
      
      public static const const_1030:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1782:String;
      
      private var var_2611:int;
      
      private var var_1445:int;
      
      private var var_2764:int;
      
      private var var_3037:int;
      
      private var var_935:Array;
      
      private var var_2763:Array;
      
      private var var_3036:int;
      
      private var var_2651:Boolean;
      
      private var var_2766:Boolean;
      
      private var var_2761:Boolean;
      
      private var var_2762:Boolean;
      
      private var var_2765:int;
      
      private var var_2767:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2651;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2651 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2766;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2766 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2761;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2761 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2762;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2762 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2765;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2765 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2767;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2767 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1782;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1782 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2611;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2611 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1445 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2764;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2764 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_3037;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_3037 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_935 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2763;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2763 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_3036;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_3036 = param1;
      }
   }
}
