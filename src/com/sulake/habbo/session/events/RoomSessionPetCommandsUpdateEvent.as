package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1855:int;
      
      private var var_2340:Array;
      
      private var var_2481:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Array, param5:Boolean = false, param6:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param5,param6);
         this.var_1855 = param2;
         this.var_2340 = param3;
         this.var_2481 = param4;
      }
      
      public function get petId() : int
      {
         return this.var_1855;
      }
      
      public function get allCommands() : Array
      {
         return this.var_2340;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_2481;
      }
   }
}
