package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_557:QuestsList;
      
      private var var_466:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_402:QuestTracker;
      
      private var var_683:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
         this.var_402 = new QuestTracker(this.var_49);
         this.var_557 = new QuestsList(this.var_49);
         this.var_466 = new QuestDetails(this.var_49);
         this._questCompleted = new QuestCompleted(this.var_49);
         this.var_683 = new NextQuestTimer(this.var_49);
      }
      
      public function onToolbarClick() : void
      {
         this.var_557.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_557.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_402.onQuest(param1);
         this.var_466.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_683.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_402.onQuestCompleted(param1);
         this.var_466.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_402.onQuestCancelled();
         this.var_466.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_683.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_402.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_557.onRoomExit();
         this.var_402.onRoomExit();
         this.var_466.onRoomExit();
         this.var_683.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_402.update(param1);
         this.var_683.update(param1);
         this.var_557.update(param1);
         this.var_466.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         if(this.var_557)
         {
            this.var_557.dispose();
            this.var_557 = null;
         }
         if(this.var_402)
         {
            this.var_402.dispose();
            this.var_402 = null;
         }
         if(this.var_466)
         {
            this.var_466.dispose();
            this.var_466 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_683)
         {
            this.var_683.dispose();
            this.var_683 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_557;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_466;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_402;
      }
   }
}
