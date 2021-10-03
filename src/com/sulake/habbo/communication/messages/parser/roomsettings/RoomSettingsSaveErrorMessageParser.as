package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2198:int = 1;
      
      public static const const_2120:int = 2;
      
      public static const const_2116:int = 3;
      
      public static const const_2149:int = 4;
      
      public static const const_1851:int = 5;
      
      public static const const_2110:int = 6;
      
      public static const const_1900:int = 7;
      
      public static const const_1835:int = 8;
      
      public static const const_2125:int = 9;
      
      public static const const_1859:int = 10;
      
      public static const const_1880:int = 11;
      
      public static const const_1810:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1791:int;
      
      private var var_708:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1791 = param1.readInteger();
         this.var_708 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1791;
      }
      
      public function get info() : String
      {
         return this.var_708;
      }
   }
}
