package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1241:int;
      
      private var var_1800:String;
      
      private var var_1206:int;
      
      private var var_1204:int;
      
      private var var_1799:int;
      
      private var var_2200:int;
      
      private var var_1160:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1241 = param1.readInteger();
         this.var_1800 = param1.readString();
         this.var_1206 = param1.readInteger();
         this.var_1204 = param1.readInteger();
         this.var_1799 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1160 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1160.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2200 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1241;
      }
      
      public function get localizationId() : String
      {
         return this.var_1800;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1206;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1204;
      }
      
      public function get products() : Array
      {
         return this.var_1160;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1799;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2200;
      }
   }
}
