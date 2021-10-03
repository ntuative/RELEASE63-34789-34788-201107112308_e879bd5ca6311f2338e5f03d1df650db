package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2283:int = 0;
      
      private var var_1495:String = "";
      
      private var var_1843:String = "";
      
      private var var_2284:String = "";
      
      private var var_2281:String = "";
      
      private var var_1721:int = 0;
      
      private var var_2282:int = 0;
      
      private var var_2280:int = 0;
      
      private var var_1497:int = 0;
      
      private var var_2279:int = 0;
      
      private var var_1496:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2283 = param1;
         this.var_1495 = param2;
         this.var_1843 = param3;
         this.var_2284 = param4;
         this.var_2281 = param5;
         if(param6)
         {
            this.var_1721 = 1;
         }
         else
         {
            this.var_1721 = 0;
         }
         this.var_2282 = param7;
         this.var_2280 = param8;
         this.var_1497 = param9;
         this.var_2279 = param10;
         this.var_1496 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2283,this.var_1495,this.var_1843,this.var_2284,this.var_2281,this.var_1721,this.var_2282,this.var_2280,this.var_1497,this.var_2279,this.var_1496];
      }
   }
}
