package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_372:int;
      
      private var var_2402:int;
      
      private var var_2696:Boolean;
      
      private var var_2695:int;
      
      private var _ownerName:String;
      
      private var var_145:RoomData;
      
      private var var_802:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_372 = param1.readInteger();
         this.var_2402 = param1.readInteger();
         this.var_2696 = param1.readBoolean();
         this.var_2695 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_145 = new RoomData(param1);
         this.var_802 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_145 != null)
         {
            this.var_145.dispose();
            this.var_145 = null;
         }
         if(this.var_802 != null)
         {
            this.var_802.dispose();
            this.var_802 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get userCount() : int
      {
         return this.var_2402;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2696;
      }
      
      public function get ownerId() : int
      {
         return this.var_2695;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_145;
      }
      
      public function get event() : RoomData
      {
         return this.var_802;
      }
   }
}
