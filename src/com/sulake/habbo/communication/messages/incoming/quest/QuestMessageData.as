package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1816:String;
      
      private var var_1814:int;
      
      private var var_1813:int;
      
      private var var_1799:int;
      
      private var _id:int;
      
      private var var_1815:Boolean;
      
      private var _type:String;
      
      private var var_2412:String;
      
      private var var_2413:int;
      
      private var var_1812:String;
      
      private var var_2414:int;
      
      private var var_2415:int;
      
      private var var_1477:int;
      
      private var var_1811:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1811 = new Date();
         super();
         this.var_1816 = param1.readString();
         this.var_1814 = param1.readInteger();
         this.var_1813 = param1.readInteger();
         this.var_1799 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1815 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2412 = param1.readString();
         this.var_2413 = param1.readInteger();
         this.var_1812 = param1.readString();
         this.var_2414 = param1.readInteger();
         this.var_2415 = param1.readInteger();
         this.var_1477 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1816;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1812;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1814;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1813;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1799;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1815;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2412;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2413;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2414;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2415;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1477 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1811.getTime();
         return int(Math.max(0,this.var_1477 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1816;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1812;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1815 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1814 >= this.var_1813;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1811;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1477 = param1;
      }
   }
}
