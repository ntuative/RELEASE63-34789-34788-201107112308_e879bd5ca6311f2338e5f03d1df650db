package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1664:Array;
      
      private var var_1665:Array;
      
      private var _issues:Array;
      
      private var var_1372:Array;
      
      private var var_2967:Boolean;
      
      private var var_2962:Boolean;
      
      private var var_2964:Boolean;
      
      private var var_2963:Boolean;
      
      private var var_2966:Boolean;
      
      private var var_2968:Boolean;
      
      private var var_2965:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1664 = [];
         this.var_1665 = [];
         this.var_1372 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1664.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1372.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2967 = param1.readBoolean();
         this.var_2962 = param1.readBoolean();
         this.var_2964 = param1.readBoolean();
         this.var_2963 = param1.readBoolean();
         this.var_2966 = param1.readBoolean();
         this.var_2968 = param1.readBoolean();
         this.var_2965 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1665.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1664 = null;
         this.var_1665 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1372)
         {
            _loc1_.dispose();
         }
         this.var_1372 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1664;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1665;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1372;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2967;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2962;
      }
      
      public function get method_7() : Boolean
      {
         return this.var_2964;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2963;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2966;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2968;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2965;
      }
   }
}
