package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1347:int;
      
      private var var_1830:String;
      
      private var var_2060:int;
      
      private var var_2830:int;
      
      private var var_2829:int;
      
      private var var_2062:int;
      
      private var var_2061:Boolean;
      
      private var _category:String;
      
      private var var_2828:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1347 = param1.readInteger();
         this.var_1830 = param1.readString();
         this.var_2060 = Math.max(1,param1.readInteger());
         this.var_2830 = param1.readInteger();
         this.var_2829 = param1.readInteger();
         this.var_2062 = param1.readInteger();
         this.var_2061 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2828 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1830;
      }
      
      public function get level() : int
      {
         return this.var_1347;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2060;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2830;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2829;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2062;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2061;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2828;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1347 > 1 || this.var_2061;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2062 = this.var_2060;
      }
   }
}
