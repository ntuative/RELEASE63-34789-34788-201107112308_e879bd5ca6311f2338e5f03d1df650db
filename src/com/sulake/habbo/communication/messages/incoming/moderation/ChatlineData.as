package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2421:int;
      
      private var var_2419:int;
      
      private var var_2420:int;
      
      private var var_2418:String;
      
      private var var_1896:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2421 = param1.readInteger();
         this.var_2419 = param1.readInteger();
         this.var_2420 = param1.readInteger();
         this.var_2418 = param1.readString();
         this.var_1896 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2421;
      }
      
      public function get minute() : int
      {
         return this.var_2419;
      }
      
      public function get chatterId() : int
      {
         return this.var_2420;
      }
      
      public function get chatterName() : String
      {
         return this.var_2418;
      }
      
      public function get msg() : String
      {
         return this.var_1896;
      }
   }
}
