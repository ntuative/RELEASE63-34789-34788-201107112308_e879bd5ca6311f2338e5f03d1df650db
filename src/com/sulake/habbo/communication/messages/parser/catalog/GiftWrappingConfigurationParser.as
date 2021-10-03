package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2931:Boolean;
      
      private var var_2930:int;
      
      private var var_1870:Array;
      
      private var var_814:Array;
      
      private var var_815:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2931;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2930;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1870;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_814;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_815;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1870 = [];
         this.var_814 = [];
         this.var_815 = [];
         this.var_2931 = param1.readBoolean();
         this.var_2930 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1870.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_814.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_815.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
