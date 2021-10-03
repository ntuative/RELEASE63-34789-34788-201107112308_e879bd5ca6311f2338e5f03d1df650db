package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_842:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2615:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_842);
         this.var_2615 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2615;
      }
   }
}
