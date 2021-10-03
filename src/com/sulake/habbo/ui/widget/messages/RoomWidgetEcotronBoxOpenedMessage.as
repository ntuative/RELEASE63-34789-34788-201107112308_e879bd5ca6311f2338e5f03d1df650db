package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1841:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1633:String;
      
      private var var_2014:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1633 = param2;
         this.var_2014 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1633;
      }
      
      public function get classId() : int
      {
         return this.var_2014;
      }
   }
}
