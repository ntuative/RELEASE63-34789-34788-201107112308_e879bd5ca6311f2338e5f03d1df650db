package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_866:int = 1;
      
      public static const const_944:int = 2;
      
      public static const const_1019:int = 3;
      
      public static const const_1255:int = 4;
      
      public static const const_803:int = 5;
      
      public static const const_1379:int = 6;
       
      
      private var _type:int;
      
      private var var_1231:int;
      
      private var var_2472:String;
      
      private var var_2997:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1231 = param2;
         this.var_2472 = param3;
         this.var_2997 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2472;
      }
      
      public function get time() : String
      {
         return this.var_2997;
      }
      
      public function get senderId() : int
      {
         return this.var_1231;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
