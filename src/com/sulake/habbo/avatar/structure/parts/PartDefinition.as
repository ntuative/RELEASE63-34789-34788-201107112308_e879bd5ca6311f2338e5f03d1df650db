package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_3021:String;
      
      private var var_2170:String;
      
      private var var_3020:String;
      
      private var var_2171:Boolean;
      
      private var var_2172:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_3021 = String(param1["set-type"]);
         this.var_2170 = String(param1["flipped-set-type"]);
         this.var_3020 = String(param1["remove-set-type"]);
         this.var_2171 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2172 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2172;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2172 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_3021;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2170;
      }
      
      public function get removeSetType() : String
      {
         return this.var_3020;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2171;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2171 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2170 = param1;
      }
   }
}
