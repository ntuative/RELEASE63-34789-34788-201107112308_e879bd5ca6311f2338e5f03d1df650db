package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_108:int = 1;
      
      public static const const_76:int = 2;
       
      
      private var var_1241:int;
      
      private var _furniId:int;
      
      private var var_2836:int;
      
      private var var_2259:String;
      
      private var var_1953:int;
      
      private var var_2800:int;
      
      private var var_2835:int;
      
      private var var_429:int;
      
      private var var_2834:int = -1;
      
      private var var_2065:int;
      
      private var var_48:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1241 = param1;
         this._furniId = param2;
         this.var_2836 = param3;
         this.var_2259 = param4;
         this.var_1953 = param5;
         this.var_429 = param6;
         this.var_2800 = param7;
         this.var_2065 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.dispose();
            this.var_48 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2800;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_48 != null)
         {
            this.var_48.dispose();
         }
         this.var_48 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2835 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2835;
      }
      
      public function get status() : int
      {
         return this.var_429;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2834;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2834 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1953 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1241 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2065;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2065 = param1;
      }
   }
}
