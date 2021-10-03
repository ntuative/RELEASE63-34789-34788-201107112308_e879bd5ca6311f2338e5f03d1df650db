package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2469:int;
      
      private var var_1633:String;
      
      private var var_2980:int;
      
      private var var_2982:int;
      
      private var _category:int;
      
      private var var_2259:String;
      
      private var var_1670:int;
      
      private var var_2984:int;
      
      private var var_2983:int;
      
      private var var_2981:int;
      
      private var var_2985:int;
      
      private var var_2986:Boolean;
      
      private var var_3125:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2469 = param1;
         this.var_1633 = param2;
         this.var_2980 = param3;
         this.var_2982 = param4;
         this._category = param5;
         this.var_2259 = param6;
         this.var_1670 = param7;
         this.var_2984 = param8;
         this.var_2983 = param9;
         this.var_2981 = param10;
         this.var_2985 = param11;
         this.var_2986 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2469;
      }
      
      public function get itemType() : String
      {
         return this.var_1633;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2980;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2982;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2259;
      }
      
      public function get extra() : int
      {
         return this.var_1670;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2984;
      }
      
      public function get creationDay() : int
      {
         return this.var_2983;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2981;
      }
      
      public function get creationYear() : int
      {
         return this.var_2985;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2986;
      }
      
      public function get songID() : int
      {
         return this.var_1670;
      }
   }
}
