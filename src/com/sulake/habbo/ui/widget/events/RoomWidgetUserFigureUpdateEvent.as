package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_189:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_48:BitmapData;
      
      private var var_2508:Boolean;
      
      private var var_1832:String = "";
      
      private var var_2447:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_189,param6,param7);
         this._userId = param1;
         this.var_48 = param2;
         this.var_2508 = param3;
         this.var_1832 = param4;
         this.var_2447 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2508;
      }
      
      public function get customInfo() : String
      {
         return this.var_1832;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2447;
      }
   }
}
