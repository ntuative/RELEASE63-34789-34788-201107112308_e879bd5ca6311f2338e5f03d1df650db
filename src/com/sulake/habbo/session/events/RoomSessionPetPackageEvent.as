package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_540:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_651:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_237:int = -1;
      
      private var var_1344:int = -1;
      
      private var var_1889:int = -1;
      
      private var _color:String = "";
      
      private var var_2022:int = 0;
      
      private var var_2023:String = null;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:String, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param2,param9,param10);
         this.var_237 = param3;
         this.var_1344 = param4;
         this.var_1889 = param5;
         this._color = param6;
         this.var_2022 = param7;
         this.var_2023 = param8;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get petType() : int
      {
         return this.var_1344;
      }
      
      public function get breed() : int
      {
         return this.var_1889;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2022;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_2023;
      }
   }
}
