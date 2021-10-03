package com.sulake.habbo.sound.trax
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TraxSequencer implements IHabboSound, IDisposable
   {
      
      private static const const_119:Number = 44100;
      
      private static const const_120:uint = 8192;
      
      private static const const_1069:uint = 88000;
      
      private static const const_691:uint = 88000;
      
      private static const const_204:Vector.<int> = new Vector.<int>(const_120,true);
      
      private static const INTERPOLATION_BUFFER:Vector.<int> = new Vector.<int>(const_120,true);
       
      
      private var _disposed:Boolean = false;
      
      private var _events:IEventDispatcher;
      
      private var var_992:Number;
      
      private var var_987:Sound;
      
      private var var_444:SoundChannel;
      
      private var var_446:TraxData;
      
      private var var_1482:Map;
      
      private var var_1144:Boolean;
      
      private var var_1481:int;
      
      private var var_1486:int = 0;
      
      private var var_173:uint;
      
      private var var_325:Array;
      
      private var var_1483:Boolean;
      
      private var var_642:Boolean = true;
      
      private var var_276:uint;
      
      private var var_1484:uint;
      
      private var var_985:Boolean;
      
      private var var_790:Boolean;
      
      private var var_789:int;
      
      private var var_443:int;
      
      private var var_986:int;
      
      private var var_527:int;
      
      private var var_641:Timer;
      
      private var var_445:Timer;
      
      private var var_1485:Boolean;
      
      private var var_1220:int = 0;
      
      private var var_1819:int = 0;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1484 = uint(30);
         super();
         this._events = param4;
         this.var_1481 = param1;
         this.var_992 = 1;
         this.var_987 = new Sound();
         this.var_444 = null;
         this.var_1482 = param3;
         this.var_446 = param2;
         this.var_1144 = true;
         this.var_173 = 0;
         this.var_325 = [];
         this.var_1483 = false;
         this.var_276 = 0;
         this.var_642 = false;
         this.var_985 = false;
         this.var_790 = false;
         this.var_789 = 0;
         this.var_443 = 0;
         this.var_986 = 0;
         this.var_527 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_173 = uint(param1 * const_119);
      }
      
      public function get volume() : Number
      {
         return this.var_992;
      }
      
      public function get position() : Number
      {
         return this.var_173 / const_119;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1144;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1144 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_642;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_443 / const_119;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_443 = int(param1 * const_119);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_789 / const_119;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_789 = int(param1 * const_119);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_446;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_992 = param1;
         if(this.var_444 != null)
         {
            this.var_444.soundTransform = new SoundTransform(this.var_992);
         }
      }
      
      public function get length() : Number
      {
         return this.var_276 / const_119;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.stopImmediately();
            this.var_446 = null;
            this.var_1482 = null;
            this.var_325 = null;
            this._events = null;
            this.var_987 = null;
            this._disposed = true;
         }
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1144)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1483)
         {
            if(this.var_446 != null)
            {
               this.var_1485 = false;
               if(this.var_446.hasMetaData)
               {
                  this.var_1485 = this.var_446.metaCutMode;
               }
               if(this.var_1485)
               {
                  if(!this.prepareSequence())
                  {
                     Logger.log("Cannot start playback, prepare sequence failed!");
                     return false;
                  }
               }
               else if(!this.prepareLegacySequence())
               {
                  Logger.log("Cannot start playback, prepare legacy sequence failed!");
                  return false;
               }
            }
         }
         return true;
      }
      
      private function prepareLegacySequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(this.var_325 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_446.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_446.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.itemCount)
            {
               _loc8_ = _loc4_.getItem(_loc7_).id;
               _loc9_ = this.var_1482.getValue(_loc8_) as TraxSample;
               _loc9_.setUsageFromSong(this.var_1481,_loc1_);
               if(_loc9_ == null)
               {
                  Logger.log("Error in prepareLegacySequence(), sample was null!");
               }
               continue;
               _loc10_ = this.getSampleBars(_loc9_.length);
               _loc11_ = _loc4_.getItem(_loc7_).length / _loc10_;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  if(_loc8_ != 0)
                  {
                     _loc3_.add(_loc5_,_loc9_);
                  }
                  _loc6_ += _loc10_;
                  _loc5_ = uint(_loc6_ * const_691);
                  _loc12_++;
               }
               if(this.var_276 < _loc5_)
               {
                  this.var_276 = _loc5_;
               }
               _loc7_++;
               return false;
            }
            this.var_325.push(_loc3_);
            _loc2_++;
         }
         this.var_1483 = true;
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_325 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_446.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_446.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = false;
            _loc8_ = 0;
            while(_loc8_ < _loc4_.itemCount)
            {
               _loc9_ = _loc4_.getItem(_loc8_).id;
               _loc10_ = this.var_1482.getValue(_loc9_) as TraxSample;
               _loc10_.setUsageFromSong(this.var_1481,_loc1_);
               if(_loc10_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc11_ = _loc6_;
               _loc12_ = _loc5_;
               _loc13_ = this.getSampleBars(_loc10_.length);
               _loc14_ = _loc4_.getItem(_loc8_).length;
               while(_loc11_ < _loc6_ + _loc14_)
               {
                  if(_loc9_ != 0 || _loc7_)
                  {
                     _loc3_.add(_loc12_,_loc10_);
                     _loc7_ = false;
                  }
                  _loc11_ += _loc13_;
                  _loc12_ = _loc11_ * const_691;
                  if(_loc11_ > _loc6_ + _loc14_)
                  {
                     _loc7_ = true;
                  }
               }
               _loc6_ += _loc4_.getItem(_loc8_).length;
               _loc5_ = uint(_loc6_ * const_691);
               if(this.var_276 < _loc5_)
               {
                  this.var_276 = _loc5_;
               }
               _loc8_++;
               return false;
            }
            this.var_325.push(_loc3_);
            _loc2_++;
         }
         this.var_1483 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_444 != null)
         {
            this.stopImmediately();
         }
         if(this.var_789 > 0)
         {
            this.var_985 = true;
            this.var_986 = 0;
         }
         this.var_790 = false;
         this.var_527 = 0;
         this.var_642 = false;
         this.var_987.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1486 = param1 * const_119;
         this.var_1220 = 0;
         this.var_1819 = 0;
         this.var_444 = this.var_987.play();
         this.volume = this.var_992;
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_642)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_443 > 0 && !this.var_642)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         this.removeStopTimer();
         if(this.var_444 != null)
         {
            this.var_444.stop();
            this.var_444 = null;
         }
         if(this.var_987 != null)
         {
            this.var_987.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         }
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_641 == null)
         {
            this.var_790 = true;
            this.var_527 = 0;
            this.var_641 = new Timer(this.var_1484 + this.var_443 / (const_119 / 1000),1);
            this.var_641.start();
            this.var_641.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         if(this.var_1485)
         {
            return Math.round(param1 / const_1069);
         }
         return Math.ceil(param1 / const_1069);
      }
      
      private function getChannelSequenceOffsets() : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = [];
         if(this.var_325 != null)
         {
            _loc2_ = this.var_325.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.var_325[_loc3_];
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length && _loc4_.getKey(_loc5_) < this.var_173)
               {
                  _loc5_++;
               }
               _loc1_.push(_loc5_ - 1);
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      private function mixChannelsIntoBuffer() : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_325 == null)
         {
            return;
         }
         var _loc1_:Array = this.getChannelSequenceOffsets();
         var _loc2_:int = this.var_325.length;
         var _loc3_:* = null;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.var_325[_loc4_];
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc5_.getWithIndex(_loc6_);
            if(_loc7_ == null)
            {
               _loc3_ = null;
            }
            else
            {
               _loc10_ = _loc5_.getKey(_loc6_);
               _loc11_ = this.var_173 - _loc10_;
               if(_loc7_.id == 0 || _loc11_ < 0)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = new TraxChannelSample(_loc7_,_loc11_);
               }
            }
            _loc8_ = const_120;
            if(this.var_276 - this.var_173 < _loc8_)
            {
               _loc8_ = this.var_276 - this.var_173;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc12_ = _loc8_;
               if(_loc6_ < _loc5_.length - 1)
               {
                  _loc13_ = _loc5_.getKey(_loc6_ + 1);
                  if(_loc8_ + this.var_173 >= _loc13_)
                  {
                     _loc12_ = _loc13_ - this.var_173;
                  }
               }
               if(_loc12_ > _loc8_ - _loc9_)
               {
                  _loc12_ = _loc8_ - _loc9_;
               }
               if(_loc4_ == _loc2_ - 1)
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.setSample(const_204,_loc9_,_loc12_);
                     _loc9_ += _loc12_;
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < _loc12_)
                     {
                        var _loc15_:*;
                        const_204[_loc15_ = _loc9_++] = 0;
                        _loc14_++;
                     }
                  }
               }
               else
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.addSample(const_204,_loc9_,_loc12_);
                  }
                  _loc9_ += _loc12_;
               }
               if(_loc9_ < _loc8_)
               {
                  _loc7_ = _loc5_.getWithIndex(++_loc6_);
                  if(_loc7_ == null || _loc7_.id == 0)
                  {
                     _loc3_ = null;
                  }
                  else
                  {
                     _loc3_ = new TraxChannelSample(_loc7_,0);
                  }
               }
            }
            _loc4_--;
         }
      }
      
      private function checkSongFinishing() : void
      {
         var _loc1_:int = this.var_276 < this.var_1486 ? int(this.var_276) : (this.var_1486 > 0 ? int(this.var_1486) : int(this.var_276));
         if(this.var_173 > _loc1_ + this.var_1484 * (const_119 / 1000) && !this.var_642)
         {
            this.var_642 = true;
            if(this.var_445 != null)
            {
               this.var_445.reset();
               this.var_445.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            }
            this.var_445 = new Timer(2,1);
            this.var_445.start();
            this.var_445.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_173 > _loc1_ - this.var_443 && !this.var_790)
         {
            this.var_985 = false;
            this.var_790 = true;
            this.var_527 = 0;
         }
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         if(param1.position > this.var_1220)
         {
            ++this.var_1819;
            Logger.log("Audio buffer under run...");
            this.var_1220 = param1.position;
         }
         if(this.volume > 0)
         {
            this.mixChannelsIntoBuffer();
         }
         var _loc2_:int = const_120;
         if(this.var_276 - this.var_173 < _loc2_)
         {
            _loc2_ = this.var_276 - this.var_173;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
         if(this.volume <= 0)
         {
            _loc2_ = 0;
         }
         this.writeAudioToOutputStream(param1.data,_loc2_);
         this.var_173 += const_120;
         this.var_1220 += const_120;
         if(this.var_444 != null)
         {
            this.var_1484 = param1.position / const_119 * 1000 - this.var_444.position;
         }
         this.checkSongFinishing();
      }
      
      private function interpolate(param1:int, param2:Number) : int
      {
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:* = 0;
         while(_loc10_ < param1)
         {
            _loc6_ = Math.floor(_loc3_);
            _loc7_ = Math.ceil(_loc3_);
            _loc4_ = 0;
            _loc5_ = 0;
            _loc8_ = _loc3_ - _loc6_;
            _loc9_ = _loc5_ - _loc4_;
            INTERPOLATION_BUFFER[_loc10_] = _loc4_ + _loc9_ * _loc8_;
            _loc3_ += param2;
            if(_loc3_ > const_120 - 2)
            {
               this.var_173 += const_120;
               this.mixChannelsIntoBuffer();
               _loc3_ = 0;
            }
            _loc10_++;
         }
         return int(Math.round(_loc3_));
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2 > 0)
         {
            if(!this.var_985 && !this.var_790)
            {
               this.writeMixingBufferToOutputStream(param1,param2);
            }
            else
            {
               if(this.var_985)
               {
                  _loc5_ = 1 / this.var_789;
                  _loc6_ = this.var_986 / Number(this.var_789);
                  this.var_986 += const_120;
                  if(this.var_986 > this.var_789)
                  {
                     this.var_985 = false;
                  }
               }
               else if(this.var_790)
               {
                  _loc5_ = -1 / this.var_443;
                  _loc6_ = 1 - this.var_527 / Number(this.var_443);
                  this.var_527 += const_120;
                  if(this.var_527 > this.var_443)
                  {
                     this.var_527 = this.var_443;
                  }
               }
               this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc6_,_loc5_);
            }
         }
         var _loc4_:int = param2;
         while(_loc4_ < const_120)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(Number(const_204[_loc4_]) * 0);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(Number(const_204[_loc6_]) * 0 * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(Number(const_204[_loc6_]) * 0);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_642)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_1481));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_641 != null)
         {
            this.var_641.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_641.reset();
            this.var_641 = null;
         }
      }
      
      private function removeStopTimer() : void
      {
         if(this.var_445 != null)
         {
            this.var_445.reset();
            this.var_445.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            this.var_445 = null;
         }
      }
   }
}
