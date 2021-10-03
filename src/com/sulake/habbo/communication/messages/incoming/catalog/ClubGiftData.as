package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1241:int;
      
      private var var_2737:Boolean;
      
      private var var_2478:Boolean;
      
      private var var_2738:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1241 = param1.readInteger();
         this.var_2737 = param1.readBoolean();
         this.var_2738 = param1.readInteger();
         this.var_2478 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1241;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2737;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2478;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2738;
      }
   }
}
