package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1842:int;
      
      private var var_3011:int;
      
      private var var_887:int;
      
      private var var_530:Number;
      
      private var var_3012:Boolean;
      
      private var var_3010:int;
      
      private var var_2167:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_530);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_3011 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_3010 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_3012 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_887;
         if(this.var_887 == 1)
         {
            this.var_530 = param1;
            this.var_1842 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_887);
            this.var_530 = this.var_530 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_3012 && param3 - this.var_1842 >= this.var_3011)
         {
            this.var_887 = 0;
            if(this.var_2167 < this.var_3010)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2167;
               this.var_1842 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
