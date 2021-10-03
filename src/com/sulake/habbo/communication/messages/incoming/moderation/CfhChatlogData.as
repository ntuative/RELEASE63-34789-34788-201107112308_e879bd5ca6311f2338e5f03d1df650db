package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2089:int;
      
      private var var_2890:int;
      
      private var var_1683:int;
      
      private var var_2601:int;
      
      private var var_145:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2089 = param1.readInteger();
         this.var_2890 = param1.readInteger();
         this.var_1683 = param1.readInteger();
         this.var_2601 = param1.readInteger();
         this.var_145 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2089);
      }
      
      public function get callId() : int
      {
         return this.var_2089;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2890;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1683;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2601;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_145;
      }
   }
}
