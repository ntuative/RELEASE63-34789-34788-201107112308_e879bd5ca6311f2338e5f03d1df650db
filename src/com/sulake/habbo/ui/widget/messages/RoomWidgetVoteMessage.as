package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_136:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_2147:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_136);
         this.var_2147 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_2147;
      }
   }
}
