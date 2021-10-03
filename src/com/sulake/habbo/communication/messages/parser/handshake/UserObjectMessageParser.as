package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_990:String;
      
      private var var_2868:String;
      
      private var var_1981:String;
      
      private var var_2866:int;
      
      private var var_2867:String;
      
      private var var_2864:int;
      
      private var var_2863:int;
      
      private var var_2371:int;
      
      private var var_1398:int;
      
      private var var_924:int;
      
      private var var_2865:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_990 = param1.readString();
         this.var_2868 = param1.readString();
         this.var_1981 = param1.readString();
         this.var_2866 = param1.readInteger();
         this.var_2867 = param1.readString();
         this.var_2864 = param1.readInteger();
         this.var_2863 = param1.readInteger();
         this.var_2371 = param1.readInteger();
         this.var_1398 = param1.readInteger();
         this.var_924 = param1.readInteger();
         this.var_2865 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_990;
      }
      
      public function get customData() : String
      {
         return this.var_2868;
      }
      
      public function get realName() : String
      {
         return this.var_1981;
      }
      
      public function get tickets() : int
      {
         return this.var_2866;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2867;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2864;
      }
      
      public function get directMail() : int
      {
         return this.var_2863;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2371;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1398;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_924;
      }
      
      public function get identityId() : int
      {
         return this.var_2865;
      }
   }
}
