package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1241:int;
      
      private var _furniId:int;
      
      private var var_2836:int;
      
      private var var_2259:String;
      
      private var var_1953:int;
      
      private var var_429:int;
      
      private var var_2834:int = -1;
      
      private var var_2800:int;
      
      private var var_2065:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1241 = param1;
         this._furniId = param2;
         this.var_2836 = param3;
         this.var_2259 = param4;
         this.var_1953 = param5;
         this.var_429 = param6;
         this.var_2834 = param7;
         this.var_2800 = param8;
         this.var_2065 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1241;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2836;
      }
      
      public function get stuffData() : String
      {
         return this.var_2259;
      }
      
      public function get price() : int
      {
         return this.var_1953;
      }
      
      public function get status() : int
      {
         return this.var_429;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2834;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2800;
      }
      
      public function get offerCount() : int
      {
         return this.var_2065;
      }
   }
}
