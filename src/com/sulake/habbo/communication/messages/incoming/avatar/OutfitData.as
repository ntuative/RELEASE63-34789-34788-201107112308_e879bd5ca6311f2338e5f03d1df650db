package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1833:int;
      
      private var var_2449:String;
      
      private var var_991:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1833 = param1.readInteger();
         this.var_2449 = param1.readString();
         this.var_991 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1833;
      }
      
      public function get figureString() : String
      {
         return this.var_2449;
      }
      
      public function get gender() : String
      {
         return this.var_991;
      }
   }
}
