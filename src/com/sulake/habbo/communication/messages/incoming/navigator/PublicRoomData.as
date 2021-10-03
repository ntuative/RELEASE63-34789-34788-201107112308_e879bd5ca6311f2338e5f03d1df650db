package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2623:String;
      
      private var var_2605:int;
      
      private var var_2604:int;
      
      private var var_2621:String;
      
      private var var_2622:int;
      
      private var var_1733:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2623 = param1.readString();
         this.var_2605 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this.var_2621 = param1.readString();
         this.var_2622 = param1.readInteger();
         this.var_1733 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2623;
      }
      
      public function get unitPort() : int
      {
         return this.var_2605;
      }
      
      public function get worldId() : int
      {
         return this.var_2604;
      }
      
      public function get castLibs() : String
      {
         return this.var_2621;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2622;
      }
      
      public function get nodeId() : int
      {
         return this.var_1733;
      }
   }
}
