package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_3004:int;
      
      private var var_1683:int;
      
      private var var_2160:String = "";
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function get topicIndex() : int
      {
         return this.var_3004;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1683;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_2160;
      }
      
      public function set topicIndex(param1:int) : void
      {
         this.var_3004 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1683 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_2160 = param1;
      }
      
      public function get userSelected() : Boolean
      {
         return this.var_1683 > 0;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!this.userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function flush() : void
      {
         this.var_1683 = 0;
         this.var_2160 = "";
      }
   }
}
