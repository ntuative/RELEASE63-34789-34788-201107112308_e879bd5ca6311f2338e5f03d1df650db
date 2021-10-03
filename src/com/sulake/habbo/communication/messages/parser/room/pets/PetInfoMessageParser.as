package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1855:int;
      
      private var _name:String;
      
      private var var_1347:int;
      
      private var var_2794:int;
      
      private var var_2716:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2795:int;
      
      private var var_2796:int;
      
      private var var_2793:int;
      
      private var var_2316:int;
      
      private var var_2695:int;
      
      private var _ownerName:String;
      
      private var var_558:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1855;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1347;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2794;
      }
      
      public function get experience() : int
      {
         return this.var_2716;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2795;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2796;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2793;
      }
      
      public function get respect() : int
      {
         return this.var_2316;
      }
      
      public function get ownerId() : int
      {
         return this.var_2695;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_558;
      }
      
      public function flush() : Boolean
      {
         this.var_1855 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1855 = param1.readInteger();
         this._name = param1.readString();
         this.var_1347 = param1.readInteger();
         this.var_2794 = param1.readInteger();
         this.var_2716 = param1.readInteger();
         this.var_2795 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2796 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2793 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2316 = param1.readInteger();
         this.var_2695 = param1.readInteger();
         this.var_558 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
