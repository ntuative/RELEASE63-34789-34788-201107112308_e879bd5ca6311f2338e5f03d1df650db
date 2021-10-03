package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1459:Number = 12;
       
      
      private var var_2362:int = -1;
      
      private var var_2359:int = -2;
      
      private var var_215:Vector3d = null;
      
      private var var_1200:Number = 0;
      
      private var var_1462:Number = 0;
      
      private var var_1789:Boolean = false;
      
      private var var_195:Vector3d = null;
      
      private var var_1788:Vector3d;
      
      private var var_2358:Boolean = false;
      
      private var var_2365:Boolean = false;
      
      private var var_2366:Boolean = false;
      
      private var var_2361:Boolean = false;
      
      private var var_2357:int = 0;
      
      private var var_2363:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2360:int = 0;
      
      private var var_2364:int = 0;
      
      private var var_1725:int = -1;
      
      private var var_1787:int = 0;
      
      private var var_1790:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1788 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_195;
      }
      
      public function get targetId() : int
      {
         return this.var_2362;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2359;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1788;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2358;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2365;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2366;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2361;
      }
      
      public function get screenWd() : int
      {
         return this.var_2357;
      }
      
      public function get screenHt() : int
      {
         return this.var_2363;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2360;
      }
      
      public function get roomHt() : int
      {
         return this.var_2364;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1725;
      }
      
      public function get method_6() : Boolean
      {
         if(this.var_215 != null && this.var_195 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2362 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1788.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2358 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2363 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1790 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2360 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2364 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1725 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_215 == null)
         {
            this.var_215 = new Vector3d();
         }
         if(this.var_215.x != param1.x || this.var_215.y != param1.y || this.var_215.z != param1.z)
         {
            this.var_215.assign(param1);
            this.var_1787 = 0;
            _loc2_ = Vector3d.dif(this.var_215,this.var_195);
            this.var_1200 = _loc2_.length;
            this.var_1789 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_215 = null;
         this.var_195 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_195 != null)
         {
            return;
         }
         this.var_195 = new Vector3d();
         this.var_195.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_195 == null)
         {
            this.var_195 = new Vector3d();
         }
         this.var_195.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_215 != null && this.var_195 != null)
         {
            ++this.var_1787;
            if(this.var_1790)
            {
               this.var_1790 = false;
               this.var_195 = this.var_215;
               this.var_215 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_215,this.var_195);
            if(_loc3_.length > this.var_1200)
            {
               this.var_1200 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_195 = this.var_215;
               this.var_215 = null;
               this.var_1462 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1200);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1200 / const_1459;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1789)
               {
                  if(_loc7_ < this.var_1462)
                  {
                     _loc7_ = this.var_1462;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1789 = false;
                  }
               }
               this.var_1462 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_195 = Vector3d.sum(this.var_195,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1725 = -1;
      }
   }
}
