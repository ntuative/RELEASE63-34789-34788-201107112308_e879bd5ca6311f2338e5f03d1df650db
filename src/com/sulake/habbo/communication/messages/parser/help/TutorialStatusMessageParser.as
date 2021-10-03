package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1341:Boolean;
      
      private var var_1342:Boolean;
      
      private var var_1635:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1341;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1342;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1635;
      }
      
      public function flush() : Boolean
      {
         this.var_1341 = false;
         this.var_1342 = false;
         this.var_1635 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1341 = param1.readBoolean();
         this.var_1342 = param1.readBoolean();
         this.var_1635 = param1.readBoolean();
         return true;
      }
   }
}
