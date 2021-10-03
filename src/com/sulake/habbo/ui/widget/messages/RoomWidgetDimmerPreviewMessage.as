package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_1008:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var _color:uint;
      
      private var var_1276:int;
      
      private var var_2356:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_1008);
         this._color = param1;
         this.var_1276 = param2;
         this.var_2356 = param3;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1276;
      }
      
      public function get bgOnly() : Boolean
      {
         return this.var_2356;
      }
   }
}
