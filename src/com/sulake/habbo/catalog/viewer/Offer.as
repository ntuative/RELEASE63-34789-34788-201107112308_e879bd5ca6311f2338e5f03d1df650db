package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1780:String = "pricing_model_unknown";
      
      public static const const_441:String = "pricing_model_single";
      
      public static const const_415:String = "pricing_model_multi";
      
      public static const const_508:String = "pricing_model_bundle";
      
      public static const const_1860:String = "price_type_none";
      
      public static const const_997:String = "price_type_credits";
      
      public static const const_1316:String = "price_type_activitypoints";
      
      public static const const_1350:String = "price_type_credits_and_activitypoints";
       
      
      private var var_782:String;
      
      private var var_1205:String;
      
      private var var_1241:int;
      
      private var var_1800:String;
      
      private var var_1206:int;
      
      private var var_1204:int;
      
      private var var_1799:int;
      
      private var var_261:ICatalogPage;
      
      private var var_628:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2200:int = 0;
      
      private var var_2390:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1241 = param1;
         this.var_1800 = param2;
         this.var_1206 = param3;
         this.var_1204 = param4;
         this.var_1799 = param5;
         this.var_261 = param8;
         this.var_2200 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2200;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_261;
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
      
      public function get activityPointType() : int
      {
         return this.var_1799;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_628;
      }
      
      public function get pricingModel() : String
      {
         return this.var_782;
      }
      
      public function get priceType() : String
      {
         return this.var_1205;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2390;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1241 = 0;
         this.var_1800 = "";
         this.var_1206 = 0;
         this.var_1204 = 0;
         this.var_1799 = 0;
         this.var_261 = null;
         if(this.var_628 != null)
         {
            this.var_628.dispose();
            this.var_628 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_782)
         {
            case const_441:
               this.var_628 = new SingleProductContainer(this,param1);
               break;
            case const_415:
               this.var_628 = new MultiProductContainer(this,param1);
               break;
            case const_508:
               this.var_628 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_782);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_782 = const_441;
            }
            else
            {
               this.var_782 = const_415;
            }
         }
         else if(param1.length > 1)
         {
            this.var_782 = const_508;
         }
         else
         {
            this.var_782 = const_1780;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1206 > 0 && this.var_1204 > 0)
         {
            this.var_1205 = const_1350;
         }
         else if(this.var_1206 > 0)
         {
            this.var_1205 = const_997;
         }
         else if(this.var_1204 > 0)
         {
            this.var_1205 = const_1316;
         }
         else
         {
            this.var_1205 = const_1860;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_261.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_628.products)
         {
            _loc4_ = this.var_261.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
