package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_237:int = 0;
      
      private var var_2022:int = 0;
      
      private var var_2023:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2022;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_2023;
      }
      
      public function flush() : Boolean
      {
         this.var_237 = 0;
         this.var_2022 = 0;
         this.var_2023 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_237 = param1.readInteger();
         this.var_2022 = param1.readInteger();
         this.var_2023 = param1.readString();
         return true;
      }
   }
}
