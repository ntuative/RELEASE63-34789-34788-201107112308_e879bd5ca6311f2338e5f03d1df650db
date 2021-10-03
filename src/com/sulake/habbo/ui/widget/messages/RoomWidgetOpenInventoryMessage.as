package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_809:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1957:String = "inventory_effects";
      
      public static const const_1195:String = "inventory_badges";
      
      public static const const_1752:String = "inventory_clothes";
      
      public static const const_2006:String = "inventory_furniture";
       
      
      private var var_2444:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_809);
         this.var_2444 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2444;
      }
   }
}
