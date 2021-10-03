package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1347:int;
      
      private var var_2079:int;
      
      private var var_2830:int;
      
      private var var_2829:int;
      
      private var var_2792:int;
      
      private var var_1830:int;
      
      private var var_2860:String = "";
      
      private var var_2861:String = "";
      
      private var var_2859:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1347 = param1.readInteger();
         this.var_1830 = param1.readInteger();
         this.var_2860 = param1.readString();
         this.var_2079 = param1.readInteger();
         this.var_2830 = param1.readInteger();
         this.var_2829 = param1.readInteger();
         this.var_2792 = param1.readInteger();
         this.var_2859 = param1.readInteger();
         this.var_2861 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1347;
      }
      
      public function get points() : int
      {
         return this.var_2079;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2830;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2829;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2792;
      }
      
      public function get badgeId() : int
      {
         return this.var_1830;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2860;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2861;
      }
      
      public function get achievementID() : int
      {
         return this.var_2859;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
