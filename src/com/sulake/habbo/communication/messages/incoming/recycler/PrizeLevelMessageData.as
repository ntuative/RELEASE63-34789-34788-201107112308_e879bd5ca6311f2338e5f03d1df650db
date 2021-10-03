package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_1590:int;
      
      private var var_2947:int;
      
      private var var_626:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1590 = param1.readInteger();
         this.var_2947 = param1.readInteger();
         this.var_626 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_626.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get prizeLevelId() : int
      {
         return this.var_1590;
      }
      
      public function get probabilityDenominator() : int
      {
         return this.var_2947;
      }
      
      public function get prizes() : Array
      {
         return this.var_626;
      }
   }
}
