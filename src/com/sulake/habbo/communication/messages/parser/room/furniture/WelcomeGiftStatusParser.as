package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1701:String;
      
      private var var_1403:Boolean;
      
      private var var_2330:Boolean;
      
      private var _furniId:int;
      
      private var var_2329:Boolean;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1701 = param1.readString();
         this.var_1403 = param1.readBoolean();
         this.var_2330 = param1.readBoolean();
         this._furniId = param1.readInteger();
         this.var_2329 = param1.readBoolean();
         return true;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2329;
      }
      
      public function get email() : String
      {
         return this.var_1701;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1403;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2330;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
