package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_597:WallRasterizer;
      
      private var var_598:FloorRasterizer;
      
      private var var_922:WallAdRasterizer;
      
      private var var_599:LandscapeRasterizer;
      
      private var var_923:PlaneMaskManager;
      
      private var var_864:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_597 = new WallRasterizer();
         this.var_598 = new FloorRasterizer();
         this.var_922 = new WallAdRasterizer();
         this.var_599 = new LandscapeRasterizer();
         this.var_923 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_864;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_598;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_597;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_922;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_599;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_923;
      }
      
      public function dispose() : void
      {
         if(this.var_597 != null)
         {
            this.var_597.dispose();
            this.var_597 = null;
         }
         if(this.var_598 != null)
         {
            this.var_598.dispose();
            this.var_598 = null;
         }
         if(this.var_922 != null)
         {
            this.var_922.dispose();
            this.var_922 = null;
         }
         if(this.var_599 != null)
         {
            this.var_599.dispose();
            this.var_599 = null;
         }
         if(this.var_923 != null)
         {
            this.var_923.dispose();
            this.var_923 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_597 != null)
         {
            this.var_597.clearCache();
         }
         if(this.var_598 != null)
         {
            this.var_598.clearCache();
         }
         if(this.var_599 != null)
         {
            this.var_599.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_597.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_598.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_922.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_599.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_923.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_864)
         {
            return;
         }
         this.var_597.initializeAssetCollection(param1);
         this.var_598.initializeAssetCollection(param1);
         this.var_922.initializeAssetCollection(param1);
         this.var_599.initializeAssetCollection(param1);
         this.var_923.initializeAssetCollection(param1);
         this.var_864 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
