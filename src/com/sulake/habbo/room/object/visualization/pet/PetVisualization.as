package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_1084:int = 2;
      
      private static const const_1539:Array = [0,0,0];
       
      
      private var var_665:PetVisualizationData = null;
      
      private var var_556:Map;
      
      private var var_1301:int = 0;
      
      private var var_613:int = 0;
      
      private var var_1015:Boolean;
      
      private var _figure:String;
      
      private var var_1302:int = 0;
      
      private var _updateTimes:Array;
      
      private var var_664:BitmapDataAsset;
      
      private var var_419:ExperienceData;
      
      private var var_1153:Boolean = false;
      
      private var var_1985:Boolean = false;
      
      private const const_2363:int = 3;
      
      private var var_1725:int = -1;
      
      private const const_1085:int = 0;
      
      private const const_2085:int = 1;
      
      private const const_2079:int = 2;
      
      private const const_1541:int = 3;
      
      private var var_64:IAvatarImage = null;
      
      private var var_284:String = "";
      
      private var var_1540:String = "";
      
      private var var_1909:Boolean = false;
      
      private var var_1542:Boolean = false;
      
      private var var_1913:Boolean = false;
      
      private var var_1261:Boolean = false;
      
      private var var_1984:Boolean = false;
      
      private var var_1543:String = "";
      
      private var var_1581:int = 0;
      
      private var var_2716:int = 0;
      
      private var var_1908:Number = NaN;
      
      private var var_1914:int = -1;
      
      private var var_1915:int = -1;
      
      public function PetVisualization()
      {
         super();
         this._updateTimes = new Array();
         this.var_556 = new Map();
         this.var_1015 = false;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1153;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(this.var_556 != null)
         {
            _loc1_ = this.var_556.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = this.var_556.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         this.var_556.dispose();
         if(this.var_419)
         {
            this.var_419.dispose();
         }
         this.var_419 = null;
         this.var_665 = null;
         this.var_1153 = true;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_665 = param1 as PetVisualizationData;
         createSprites(this.const_1541);
         var _loc2_:BitmapData = (this.var_665.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset).content as BitmapData;
         this.var_419 = new ExperienceData(_loc2_.clone());
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_147)
         {
            this.var_1909 = param1.getNumber(RoomObjectVariableEnum.const_287) > 0;
            this.var_1543 = param1.getString(RoomObjectVariableEnum.const_168);
            this.var_284 = param1.getString(RoomObjectVariableEnum.const_294);
            this.var_1540 = param1.getString(RoomObjectVariableEnum.const_960);
            this.var_1908 = param1.getNumber(RoomObjectVariableEnum.const_225);
            this.var_1581 = param1.getNumber(RoomObjectVariableEnum.AVATAR_EXPERIENCE_TIMESTAMP);
            this.var_2716 = param1.getNumber(RoomObjectVariableEnum.const_416);
            this.validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_221);
            if(this._figure != _loc3_)
            {
               this._figure = _loc3_;
               this.resetAvatarImages();
            }
            var_147 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_556)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_556.reset();
         this.var_64 = null;
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         this.var_1984 = false;
         switch(this.var_284)
         {
            case AvatarAction.const_601:
            case AvatarAction.const_1286:
            case AvatarAction.const_1249:
            case AvatarAction.const_1184:
            case AvatarAction.const_1254:
            case AvatarAction.const_1240:
            case AvatarAction.const_823:
            case AvatarAction.const_335:
            case AvatarAction.const_283:
               this.var_1984 = true;
         }
         this.var_1913 = false;
         this.var_1261 = false;
         if(this.var_284 == "lay")
         {
            this.var_1261 = true;
            _loc1_ = int(this.var_1540);
            if(_loc1_ < 0)
            {
               this.var_1913 = true;
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_509 != param1.getUpdateID() || this.var_1725 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = this.var_1908;
            if(isNaN(this.var_1908))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != this.var_1914 || param3)
            {
               this.var_1914 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               this.var_64.setDirectionAngle(AvatarSetType.const_41,_loc4_);
            }
            if(_loc5_ != this.var_1915 || param3)
            {
               this.var_1915 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               this.var_64.setDirectionAngle(AvatarSetType.const_56,_loc5_);
            }
            var_509 = param1.getUpdateID();
            this.var_1725 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_556.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_665.getAvatar(this._figure,param1,this);
            if(_loc3_ != null)
            {
               this.var_556.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2085);
         this.var_664 = null;
         _loc2_ = getSprite(this.const_2085);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            this.var_664 = this.var_64.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            this.var_664 = this.var_64.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(this.var_664)
         {
            _loc2_.asset = this.var_664.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 0.005;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_665 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         if(this.var_1985)
         {
            this.var_1985 = false;
            this.var_1301 = 0;
            this.var_1302 = 1;
            this.resetAvatarImages();
         }
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = this.updateModel(_loc6_,_loc7_);
         if(_loc10_ || _loc7_ != var_103 || this.var_64 == null)
         {
            if(_loc7_ != var_103)
            {
               var_103 = _loc7_;
               _loc8_ = true;
            }
            if(_loc8_ || this.var_64 == null)
            {
               this.var_64 = this.getAvatarImage(_loc7_);
            }
            if(this.var_64 == null)
            {
               return;
            }
            if(_loc8_)
            {
               this.updateShadow(_loc7_);
            }
            _loc9_ = this.updateObject(_loc5_,param1,true);
            this.updateActions(this.var_64);
         }
         else
         {
            _loc9_ = this.updateObject(_loc5_,param1);
         }
         var _loc11_:Boolean = _loc9_ || _loc10_ || _loc8_;
         var _loc12_:Boolean = this.var_1015 || this.var_1302 > 0 || this.var_1984;
         this.var_419.alpha = 0;
         if(this.var_1581 > 0)
         {
            _loc13_ = param2 - this.var_1581;
            if(_loc13_ < AvatarAction.const_1140)
            {
               this.var_419.alpha = int(Math.sin(_loc13_ / 0 * 0) * 255);
               this.var_419.setExperience(this.var_2716);
               this.var_1302 = this.const_2363;
            }
            else
            {
               this.var_1581 = 0;
            }
            _loc14_ = getSprite(this.const_2079);
            if(_loc14_ != null)
            {
               if(this.var_419.alpha > 0)
               {
                  _loc14_.asset = this.var_419.image;
                  _loc14_.offsetX = -20;
                  _loc14_.offsetY = -80;
                  _loc14_.alpha = this.var_419.alpha;
                  _loc14_.visible = true;
               }
               else
               {
                  _loc14_.asset = null;
                  _loc14_.visible = false;
               }
            }
         }
         if(_loc11_ || _loc12_)
         {
            increaseUpdateId();
            --this.var_1302;
            ++this.var_613;
            --this.var_1301;
            if(!(this.var_1301 <= 0 || _loc8_))
            {
               return;
            }
            this.var_64.updateAnimationByFrames(1);
            this.var_1301 = const_1084;
            this.var_1015 = this.var_64.isAnimating();
            _loc15_ = this.var_64.getCanvasOffsets();
            if(_loc15_ == null || _loc15_.length < 3)
            {
               _loc15_ = const_1539;
            }
            _loc16_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc16_ = Math.min(_loc7_ / 2.75,0);
            }
            _loc14_ = getSprite(this.const_1085);
            if(_loc14_)
            {
               _loc19_ = this.var_64.getImage(AvatarSetType.const_41,false);
               if(_loc19_ != null)
               {
                  _loc14_.asset = _loc19_;
               }
               if(_loc7_ < 48)
               {
                  _loc14_.offsetX = -16 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + 8 + _loc15_[1] + _loc16_;
               }
               else
               {
                  _loc14_.offsetX = -32 + _loc15_[0];
                  _loc14_.offsetY = -_loc14_.asset.height + 16 + _loc15_[1] + _loc16_;
               }
            }
            _loc17_ = this.const_1541;
            for each(_loc18_ in this.var_64.getSprites())
            {
               _loc14_ = getSprite(_loc17_);
               if(_loc14_ != null)
               {
                  _loc20_ = this.var_64.getLayerData(_loc18_);
                  _loc21_ = 0;
                  _loc22_ = _loc18_.getDirectionOffsetX(this.var_64.getDirection());
                  _loc23_ = _loc18_.getDirectionOffsetY(this.var_64.getDirection());
                  _loc24_ = _loc18_.getDirectionOffsetZ(this.var_64.getDirection());
                  _loc25_ = 0;
                  if(_loc18_.hasDirections)
                  {
                     _loc25_ = this.var_64.getDirection();
                  }
                  if(_loc20_ != null)
                  {
                     _loc21_ = _loc20_.animationFrame;
                     _loc22_ += _loc20_.dx;
                     _loc23_ += _loc20_.dy;
                     _loc25_ += _loc20_.directionOffset;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  if(_loc25_ < 0)
                  {
                     _loc25_ += 8;
                  }
                  if(_loc25_ > 7)
                  {
                     _loc25_ -= 8;
                  }
                  _loc26_ = this.var_64.getScale() + "_" + _loc18_.member + "_" + _loc25_ + "_" + _loc21_;
                  _loc27_ = this.var_64.getAsset(_loc26_);
                  if(_loc27_ != null)
                  {
                     _loc14_.asset = _loc27_.content as BitmapData;
                     _loc14_.offsetX = -1 * _loc27_.offset.x - _loc7_ / 2 + _loc22_;
                     _loc14_.offsetY = -1 * _loc27_.offset.y + _loc23_;
                     _loc14_.relativeDepth = -0.01 - 0.1 * _loc17_ * _loc24_;
                     if(_loc18_.ink == 33)
                     {
                        _loc14_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc14_.blendMode = BlendMode.NORMAL;
                     }
                     _loc17_++;
                  }
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_435,this.var_284,this.var_1540);
         if(this.var_1543 != null && this.var_1543 != "")
         {
            param1.appendAction(AvatarAction.const_328,this.var_1543);
         }
         if(this.var_1909 || this.var_1542)
         {
            param1.appendAction(AvatarAction.const_608);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + this.const_1541;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function imageReady() : void
      {
         this.var_1985 = true;
      }
      
      public function petImageReady(param1:String) : void
      {
         this.resetAvatarImages();
      }
   }
}
