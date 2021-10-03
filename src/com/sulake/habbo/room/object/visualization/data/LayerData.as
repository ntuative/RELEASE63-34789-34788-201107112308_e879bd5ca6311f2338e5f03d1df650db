package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_782:String = "";
      
      public static const const_451:int = 0;
      
      public static const const_499:int = 255;
      
      public static const const_735:Boolean = false;
      
      public static const const_624:int = 0;
      
      public static const const_557:int = 0;
      
      public static const const_412:int = 0;
      
      public static const const_1266:int = 1;
      
      public static const const_1395:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2615:String = "";
      
      private var var_1988:int = 0;
      
      private var var_2855:int = 255;
      
      private var var_3027:Boolean = false;
      
      private var var_3024:int = 0;
      
      private var var_3025:int = 0;
      
      private var var_3026:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2615 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2615;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1988 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1988;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2855 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2855;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_3027 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_3027;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_3024 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_3024;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_3025 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_3025;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_3026 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_3026;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
