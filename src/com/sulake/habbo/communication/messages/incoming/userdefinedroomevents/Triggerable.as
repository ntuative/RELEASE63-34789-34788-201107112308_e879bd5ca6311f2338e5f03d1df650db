package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2906:Boolean;
      
      private var _furniLimit:int;
      
      private var var_2095:Array;
      
      private var _id:int;
      
      private var var_2904:String;
      
      private var var_1641:Array;
      
      private var var_2905:int;
      
      private var var_2094:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_2095 = new Array();
         this.var_1641 = new Array();
         super();
         this.var_2906 = param1.readBoolean();
         this._furniLimit = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_2095.push(_loc5_);
            _loc3_++;
         }
         this.var_2905 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2904 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1641.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2094 = param1.readInteger();
      }
      
      public function get stuffTypeSelectionEnabled() : Boolean
      {
         return this.var_2906;
      }
      
      public function get stuffTypeSelectionCode() : int
      {
         return this.var_2094;
      }
      
      public function set stuffTypeSelectionCode(param1:int) : void
      {
         this.var_2094 = param1;
      }
      
      public function get furniLimit() : int
      {
         return this._furniLimit;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_2095;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2904;
      }
      
      public function get intParams() : Array
      {
         return this.var_1641;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2905;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1641[param1] == 1;
      }
   }
}
