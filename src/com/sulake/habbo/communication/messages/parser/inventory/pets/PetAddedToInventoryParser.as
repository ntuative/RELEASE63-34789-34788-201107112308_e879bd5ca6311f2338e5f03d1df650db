package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_1104:PetData;
      
      private var var_2717:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1104 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1104 = new PetData(param1);
         this.var_2717 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return this.var_1104;
      }
      
      public function get purchased() : Boolean
      {
         return this.var_2717;
      }
   }
}
