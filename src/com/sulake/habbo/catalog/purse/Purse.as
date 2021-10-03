package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2021:int = 0;
      
      private var var_1587:Dictionary;
      
      private var var_1995:int = 0;
      
      private var var_1994:int = 0;
      
      private var var_2582:Boolean = false;
      
      private var var_2581:int = 0;
      
      private var var_2576:int = 0;
      
      private var var_2719:Boolean = false;
      
      public function Purse()
      {
         this.var_1587 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2021;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2021 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1995;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1994;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1995 > 0 || this.var_1994 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2582;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2719;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2719 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2582 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2581;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2581 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2576;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1587;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1587 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1587[param1];
      }
   }
}
