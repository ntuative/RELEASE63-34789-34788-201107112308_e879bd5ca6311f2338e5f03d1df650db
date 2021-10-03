package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2873:String;
      
      private var var_3041:String;
      
      private var var_462:BitmapDataAsset;
      
      private var var_1529:Boolean;
      
      private var var_1530:Boolean;
      
      private var var_3040:Boolean;
      
      private var _offsetX:int;
      
      private var var_1239:int;
      
      private var var_229:int;
      
      private var _height:int;
      
      private var var_864:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2873 = param1;
         this.var_3041 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_462 = _loc9_;
            this.var_864 = false;
         }
         else
         {
            this.var_462 = null;
            this.var_864 = true;
         }
         this.var_1529 = param4;
         this.var_1530 = param5;
         this._offsetX = param6;
         this.var_1239 = param7;
         this.var_3040 = param8;
      }
      
      public function dispose() : void
      {
         this.var_462 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_864 && this.var_462 != null)
         {
            _loc1_ = this.var_462.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_229 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_864 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1530;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1529;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_229;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2873;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_3041;
      }
      
      public function get asset() : IAsset
      {
         return this.var_462;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_3040;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1529)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1530)
         {
            return this.var_1239;
         }
         return -(this.height + this.var_1239);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1239;
      }
   }
}
