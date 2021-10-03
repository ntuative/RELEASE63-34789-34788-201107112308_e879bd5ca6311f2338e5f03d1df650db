package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2806:int;
      
      private var var_2804:int;
      
      private var var_2805:int;
      
      private var var_2807:int;
      
      private var var_118:Array;
      
      private var var_258:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_118 = new Array();
         this.var_258 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2806 = param1.readInteger();
         this.var_2804 = param1.readInteger();
         this.var_2805 = param1.readInteger();
         this.var_2807 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_118.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_258.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2806;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2804;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2805;
      }
      
      public function get categories() : Array
      {
         return this.var_118;
      }
      
      public function get friends() : Array
      {
         return this.var_258;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2807;
      }
   }
}
