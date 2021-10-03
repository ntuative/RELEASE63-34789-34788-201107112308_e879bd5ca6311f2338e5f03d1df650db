package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_1412:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_1380:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_1371:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_827:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_827 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_827;
      }
   }
}
