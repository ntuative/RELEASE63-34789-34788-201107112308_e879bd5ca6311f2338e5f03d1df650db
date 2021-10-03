package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_982:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_639:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1855:int = 0;
      
      private var var_206:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1855 = param2;
         this.var_206 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1855;
      }
      
      public function get value() : String
      {
         return this.var_206;
      }
   }
}
