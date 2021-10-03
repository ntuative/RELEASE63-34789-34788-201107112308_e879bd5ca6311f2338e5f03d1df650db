package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2564:int;
      
      private var var_2114:String;
      
      private var var_2940:String;
      
      private var var_2994:Boolean;
      
      private var var_2996:Boolean;
      
      private var var_2993:int;
      
      private var var_2941:String;
      
      private var var_2995:String;
      
      private var var_1981:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2564 = param1.readInteger();
         this.var_2114 = param1.readString();
         this.var_2940 = param1.readString();
         this.var_2994 = param1.readBoolean();
         this.var_2996 = param1.readBoolean();
         param1.readString();
         this.var_2993 = param1.readInteger();
         this.var_2941 = param1.readString();
         this.var_2995 = param1.readString();
         this.var_1981 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2564;
      }
      
      public function get avatarName() : String
      {
         return this.var_2114;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2940;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2994;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2996;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2993;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2941;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2995;
      }
      
      public function get realName() : String
      {
         return this.var_1981;
      }
   }
}
