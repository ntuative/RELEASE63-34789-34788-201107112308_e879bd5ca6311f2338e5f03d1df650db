package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2283:int = 16777215;
      
      public static const const_1250:int = 8191;
      
      public static const const_1365:int = 8191;
      
      public static const const_2266:int = 1;
      
      public static const const_1403:int = 1;
      
      public static const const_1256:int = 1;
      
      private static var var_528:uint = 0;
      
      private static var var_529:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1250)
         {
            param2 = const_1250;
         }
         else if(param2 < const_1403)
         {
            param2 = const_1403;
         }
         if(param3 > const_1365)
         {
            param3 = const_1365;
         }
         else if(param3 < const_1256)
         {
            param3 = const_1256;
         }
         super(param2,param3,param4,param5);
         ++var_528;
         var_529 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_528;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_529;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_529 -= width * height * 4;
            --var_528;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
