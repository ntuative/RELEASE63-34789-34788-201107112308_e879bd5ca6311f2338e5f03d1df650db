package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1633:String;
      
      private var var_2014:int;
      
      private var var_1952:String;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemType() : String
      {
         return this.var_1633;
      }
      
      public function get classId() : int
      {
         return this.var_2014;
      }
      
      public function get productCode() : String
      {
         return this.var_1952;
      }
      
      public function flush() : Boolean
      {
         this.var_1633 = "";
         this.var_2014 = 0;
         this.var_1952 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1633 = param1.readString();
         this.var_2014 = param1.readInteger();
         this.var_1952 = param1.readString();
         return true;
      }
   }
}
