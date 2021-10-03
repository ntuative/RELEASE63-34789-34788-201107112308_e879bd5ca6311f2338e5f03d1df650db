package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1241:int;
      
      private var var_1952:String;
      
      private var var_1953:int;
      
      private var _upgrade:Boolean;
      
      private var var_2673:Boolean;
      
      private var var_2674:int;
      
      private var var_2671:int;
      
      private var var_2670:int;
      
      private var var_2672:int;
      
      private var var_2669:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1241 = param1.readInteger();
         this.var_1952 = param1.readString();
         this.var_1953 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2673 = param1.readBoolean();
         this.var_2674 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         this.var_2670 = param1.readInteger();
         this.var_2672 = param1.readInteger();
         this.var_2669 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1241;
      }
      
      public function get productCode() : String
      {
         return this.var_1952;
      }
      
      public function get price() : int
      {
         return this.var_1953;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2673;
      }
      
      public function get periods() : int
      {
         return this.var_2674;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2671;
      }
      
      public function get year() : int
      {
         return this.var_2670;
      }
      
      public function get month() : int
      {
         return this.var_2672;
      }
      
      public function get day() : int
      {
         return this.var_2669;
      }
   }
}
