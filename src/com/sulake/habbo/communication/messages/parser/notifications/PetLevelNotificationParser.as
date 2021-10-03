package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1855:int;
      
      private var var_2277:String;
      
      private var var_1347:int;
      
      private var var_1344:int;
      
      private var var_1889:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1855 = param1.readInteger();
         this.var_2277 = param1.readString();
         this.var_1347 = param1.readInteger();
         this.var_1344 = param1.readInteger();
         this.var_1889 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1855;
      }
      
      public function get petName() : String
      {
         return this.var_2277;
      }
      
      public function get level() : int
      {
         return this.var_1347;
      }
      
      public function get petType() : int
      {
         return this.var_1344;
      }
      
      public function get breed() : int
      {
         return this.var_1889;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
