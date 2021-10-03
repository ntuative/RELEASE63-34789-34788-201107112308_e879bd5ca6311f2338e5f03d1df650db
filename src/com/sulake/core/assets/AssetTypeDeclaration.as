package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2375:String;
      
      private var var_2373:Class;
      
      private var var_2374:Class;
      
      private var var_1793:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2375 = param1;
         this.var_2373 = param2;
         this.var_2374 = param3;
         if(rest == null)
         {
            this.var_1793 = new Array();
         }
         else
         {
            this.var_1793 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2375;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2373;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2374;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1793;
      }
   }
}
