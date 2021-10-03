package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_804:TileHeightMap = null;
      
      private var var_1234:LegacyWallGeometry = null;
      
      private var var_1235:RoomCamera = null;
      
      private var var_805:SelectedRoomObjectData = null;
      
      private var var_803:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_535:Map;
      
      private var var_534:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_535 = new Map();
         this.var_534 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1234 = new LegacyWallGeometry();
         this.var_1235 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_804;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_804 != null)
         {
            this.var_804.dispose();
         }
         this.var_804 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1234;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1235;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_805;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_805 != null)
         {
            this.var_805.dispose();
         }
         this.var_805 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_803;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_803 != null)
         {
            this.var_803.dispose();
         }
         this.var_803 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_804 != null)
         {
            this.var_804.dispose();
            this.var_804 = null;
         }
         if(this.var_1234 != null)
         {
            this.var_1234.dispose();
            this.var_1234 = null;
         }
         if(this.var_1235 != null)
         {
            this.var_1235.dispose();
            this.var_1235 = null;
         }
         if(this.var_805 != null)
         {
            this.var_805.dispose();
            this.var_805 = null;
         }
         if(this.var_803 != null)
         {
            this.var_803.dispose();
            this.var_803 = null;
         }
         if(this.var_535 != null)
         {
            this.var_535.dispose();
            this.var_535 = null;
         }
         if(this.var_534 != null)
         {
            this.var_534.dispose();
            this.var_534 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_535.remove(param1.id);
            this.var_535.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_535.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_535.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_535.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_534.remove(param1.id);
            this.var_534.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_534.length > 0)
         {
            return this.getWallItemDataWithId(this.var_534.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_534.remove(param1);
      }
   }
}
