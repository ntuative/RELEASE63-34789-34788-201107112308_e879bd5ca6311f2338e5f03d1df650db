package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2800:int;
      
      private var var_2802:int;
      
      private var var_2798:int;
      
      private var _dayOffsets:Array;
      
      private var var_2184:Array;
      
      private var var_2183:Array;
      
      private var var_2801:int;
      
      private var var_2799:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2800 = param1.readInteger();
         this.var_2802 = param1.readInteger();
         this.var_2798 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2184 = [];
         this.var_2183 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2184.push(param1.readInteger());
            this.var_2183.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2799 = param1.readInteger();
         this.var_2801 = param1.readInteger();
         return true;
      }
   }
}
