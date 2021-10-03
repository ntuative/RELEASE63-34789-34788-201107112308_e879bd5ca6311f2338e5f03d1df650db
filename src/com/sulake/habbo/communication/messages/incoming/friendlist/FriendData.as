package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_991:int;
      
      private var var_903:Boolean;
      
      private var var_1884:Boolean;
      
      private var _figure:String;
      
      private var var_1445:int;
      
      private var var_1982:String;
      
      private var var_1983:String;
      
      private var var_1981:String;
      
      private var var_2862:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_991 = param1.readInteger();
         this.var_903 = param1.readBoolean();
         this.var_1884 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1445 = param1.readInteger();
         this.var_1982 = param1.readString();
         this.var_1983 = param1.readString();
         this.var_1981 = param1.readString();
         this.var_2862 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_991;
      }
      
      public function get online() : Boolean
      {
         return this.var_903;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1884;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get motto() : String
      {
         return this.var_1982;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1983;
      }
      
      public function get realName() : String
      {
         return this.var_1981;
      }
      
      public function get facebookId() : String
      {
         return this.var_2862;
      }
   }
}
