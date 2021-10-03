package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_746:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1338:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2112:String = "RWOCM_PIXELS";
      
      public static const const_2118:String = "RWOCM_CREDITS";
      
      public static const const_2151:String = "RWOCM_SHELLS";
       
      
      private var var_2399:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_746);
         this.var_2399 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2399;
      }
   }
}
