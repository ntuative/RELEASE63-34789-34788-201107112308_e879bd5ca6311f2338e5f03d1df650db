package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_72:String = "s";
      
      public static const const_196:String = "e";
       
      
      private var var_1675:String;
      
      private var var_2570:int;
      
      private var var_1120:String;
      
      private var var_1674:int;
      
      private var var_2151:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1675 = param1.readString();
         this.var_2570 = param1.readInteger();
         this.var_1120 = param1.readString();
         this.var_1674 = param1.readInteger();
         this.var_2151 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1675;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2570;
      }
      
      public function get extraParam() : String
      {
         return this.var_1120;
      }
      
      public function get productCount() : int
      {
         return this.var_1674;
      }
      
      public function get expiration() : int
      {
         return this.var_2151;
      }
   }
}
