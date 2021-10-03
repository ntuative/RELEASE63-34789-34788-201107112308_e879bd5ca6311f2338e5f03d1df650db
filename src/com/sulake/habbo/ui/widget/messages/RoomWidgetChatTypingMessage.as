package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_936:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_721:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_936);
         this.var_721 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_721;
      }
   }
}
