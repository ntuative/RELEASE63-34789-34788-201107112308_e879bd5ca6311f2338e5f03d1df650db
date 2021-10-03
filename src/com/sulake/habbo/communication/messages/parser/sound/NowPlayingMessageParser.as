package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2054:int;
      
      private var _currentPosition:int;
      
      private var var_2056:int;
      
      private var var_2055:int;
      
      private var var_2053:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2054;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2056;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2055;
      }
      
      public function get syncCount() : int
      {
         return this.var_2053;
      }
      
      public function flush() : Boolean
      {
         this.var_2054 = -1;
         this._currentPosition = -1;
         this.var_2056 = -1;
         this.var_2055 = -1;
         this.var_2053 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2054 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2056 = param1.readInteger();
         this.var_2055 = param1.readInteger();
         this.var_2053 = param1.readInteger();
         return true;
      }
   }
}
