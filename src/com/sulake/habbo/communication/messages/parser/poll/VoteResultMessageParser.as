package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1374:String;
      
      private var var_1446:Array;
      
      private var var_1353:Array;
      
      private var var_2042:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1374;
      }
      
      public function get choices() : Array
      {
         return this.var_1446.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1353.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2042;
      }
      
      public function flush() : Boolean
      {
         this.var_1374 = "";
         this.var_1446 = [];
         this.var_1353 = [];
         this.var_2042 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1374 = param1.readString();
         this.var_1446 = [];
         this.var_1353 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1446.push(param1.readString());
            this.var_1353.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2042 = param1.readInteger();
         return true;
      }
   }
}
