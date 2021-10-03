package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_411:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_667:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1321:int;
      
      private var var_3035:Boolean;
      
      private var var_565:Boolean;
      
      private var var_1741:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1321 = param2;
         this.var_3035 = param3;
         this.var_565 = param4;
         this.var_1741 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1321;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_3035;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_565;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1741;
      }
   }
}
