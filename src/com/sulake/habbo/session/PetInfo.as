package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1855:int;
      
      private var var_1347:int;
      
      private var var_2838:int;
      
      private var var_2716:int;
      
      private var var_2839:int;
      
      private var _energy:int;
      
      private var var_2841:int;
      
      private var _nutrition:int;
      
      private var var_2843:int;
      
      private var var_2695:int;
      
      private var _ownerName:String;
      
      private var var_2316:int;
      
      private var var_558:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1855;
      }
      
      public function get level() : int
      {
         return this.var_1347;
      }
      
      public function get levelMax() : int
      {
         return this.var_2838;
      }
      
      public function get experience() : int
      {
         return this.var_2716;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2839;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2841;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2843;
      }
      
      public function get ownerId() : int
      {
         return this.var_2695;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2316;
      }
      
      public function get age() : int
      {
         return this.var_558;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1855 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1347 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2838 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2716 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2839 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2841 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2843 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2695 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_558 = param1;
      }
   }
}
