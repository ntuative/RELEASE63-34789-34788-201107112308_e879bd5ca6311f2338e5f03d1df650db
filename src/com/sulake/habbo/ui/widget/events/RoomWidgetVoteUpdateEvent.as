package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_146:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_161:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1374:String;
      
      private var var_1446:Array;
      
      private var var_1353:Array;
      
      private var var_2042:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1374 = param2;
         this.var_1446 = param3;
         this.var_1353 = param4;
         if(this.var_1353 == null)
         {
            this.var_1353 = [];
         }
         this.var_2042 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1374;
      }
      
      public function get choices() : Array
      {
         return this.var_1446.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1353.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2042;
      }
   }
}
