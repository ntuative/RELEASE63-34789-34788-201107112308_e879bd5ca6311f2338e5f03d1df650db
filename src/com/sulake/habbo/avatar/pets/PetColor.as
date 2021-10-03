package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1867:uint;
      
      private var var_1868:uint;
      
      private var _b:uint;
      
      private var var_866:ColorTransform;
      
      private var var_1869:Number;
      
      private var var_1865:Number;
      
      private var var_1866:Number;
      
      private var var_3028:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1867 = this._rgb >> 16 & 255;
         this.var_1868 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1869 = this.var_1867 / 255 * 1;
         this.var_1865 = this.var_1868 / 255 * 1;
         this.var_1866 = this._b / 255 * 1;
         this.var_866 = new ColorTransform(this.var_1869,this.var_1865,this.var_1866);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1867;
      }
      
      public function get g() : uint
      {
         return this.var_1868;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_866;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_3028;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_3028 = param1;
      }
   }
}
