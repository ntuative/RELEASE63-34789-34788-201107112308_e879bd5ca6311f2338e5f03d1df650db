package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1073:int = 10;
      
      private static const const_693:int = 20;
      
      private static const const_1491:int = 31;
      
      private static const const_1490:int = 32;
       
      
      private var var_327:Array;
      
      private var var_821:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_327 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_821)
            {
               this.var_821 = true;
               this.var_327 = new Array();
               this.var_327.push(const_1491);
               this.var_327.push(const_1490);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1073)
         {
            if(this.var_821)
            {
               this.var_821 = false;
               this.var_327 = new Array();
               this.var_327.push(const_1073 + param1);
               this.var_327.push(const_693 + param1);
               this.var_327.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_327.length > 0)
            {
               super.setAnimation(this.var_327.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
