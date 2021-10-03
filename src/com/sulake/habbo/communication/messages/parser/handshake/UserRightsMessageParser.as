package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_2200:int;
      
      private var var_2203:int;
      
      public function UserRightsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2200 = param1.readInteger();
         this.var_2203 = param1.readInteger();
         return true;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2200;
      }
      
      public function get securityLevel() : int
      {
         return this.var_2203;
      }
   }
}
