package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_796:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2307:int;
      
      private var var_2306:int;
      
      private var _color:uint;
      
      private var var_1276:int;
      
      private var var_2666:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_796);
         this.var_2307 = param1;
         this.var_2306 = param2;
         this._color = param3;
         this.var_1276 = param4;
         this.var_2666 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2307;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2306;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1276;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2666;
      }
   }
}
