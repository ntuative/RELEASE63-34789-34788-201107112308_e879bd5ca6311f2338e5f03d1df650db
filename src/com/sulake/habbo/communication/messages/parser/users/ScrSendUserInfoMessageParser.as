package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2262:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1261:int = 3;
       
      
      private var var_943:String;
      
      private var var_2579:int;
      
      private var var_2575:int;
      
      private var var_2577:int;
      
      private var var_2574:int;
      
      private var var_2573:Boolean;
      
      private var var_2582:Boolean;
      
      private var var_2581:int;
      
      private var var_2576:int;
      
      private var var_2578:Boolean;
      
      private var var_2580:int;
      
      private var var_2572:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_943 = param1.readString();
         this.var_2579 = param1.readInteger();
         this.var_2575 = param1.readInteger();
         this.var_2577 = param1.readInteger();
         this.var_2574 = param1.readInteger();
         this.var_2573 = param1.readBoolean();
         this.var_2582 = param1.readBoolean();
         this.var_2581 = param1.readInteger();
         this.var_2576 = param1.readInteger();
         this.var_2578 = param1.readBoolean();
         this.var_2580 = param1.readInteger();
         this.var_2572 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_943;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2579;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2575;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2577;
      }
      
      public function get responseType() : int
      {
         return this.var_2574;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2573;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2582;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2581;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2576;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2578;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2580;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2572;
      }
   }
}
