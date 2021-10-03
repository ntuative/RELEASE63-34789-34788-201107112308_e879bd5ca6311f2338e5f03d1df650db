package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1177:int;
      
      private var var_2539:String;
      
      private var var_2540:int;
      
      private var var_2449:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1177 = param1.readInteger();
         this.var_2539 = param1.readString();
         this.var_2449 = param1.readString();
         this.var_2540 = this.var_1177;
      }
      
      public function get requestId() : int
      {
         return this.var_1177;
      }
      
      public function get requesterName() : String
      {
         return this.var_2539;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2540;
      }
      
      public function get figureString() : String
      {
         return this.var_2449;
      }
   }
}
