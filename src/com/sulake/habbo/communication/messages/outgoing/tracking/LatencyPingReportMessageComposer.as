package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2712:int;
      
      private var var_2713:int;
      
      private var var_2711:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2712 = param1;
         this.var_2713 = param2;
         this.var_2711 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2712,this.var_2713,this.var_2711];
      }
      
      public function dispose() : void
      {
      }
   }
}
