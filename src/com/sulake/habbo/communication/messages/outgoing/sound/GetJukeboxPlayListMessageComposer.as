package com.sulake.habbo.communication.messages.outgoing.sound
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class GetJukeboxPlayListMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_34:Array;
      
      public function GetJukeboxPlayListMessageComposer()
      {
         this.var_34 = new Array();
         super();
      }
      
      public function getMessageArray() : Array
      {
         return this.var_34;
      }
      
      public function dispose() : void
      {
         this.var_34 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
