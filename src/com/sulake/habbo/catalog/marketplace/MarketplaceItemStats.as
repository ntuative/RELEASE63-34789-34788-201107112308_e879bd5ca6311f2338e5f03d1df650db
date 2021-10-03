package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2800:int;
      
      private var var_2802:int;
      
      private var var_2798:int;
      
      private var _dayOffsets:Array;
      
      private var var_2184:Array;
      
      private var var_2183:Array;
      
      private var var_2801:int;
      
      private var var_2799:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2800;
      }
      
      public function get offerCount() : int
      {
         return this.var_2802;
      }
      
      public function get historyLength() : int
      {
         return this.var_2798;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2184;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2183;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2801;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2799;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2800 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2802 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2798 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2184 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2183 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2801 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2799 = param1;
      }
   }
}
