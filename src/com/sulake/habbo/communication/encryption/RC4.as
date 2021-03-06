package com.sulake.habbo.communication.encryption
{
   import com.sulake.core.communication.encryption.IEncryption;
   import flash.utils.ByteArray;
   
   public class RC4 implements IEncryption
   {
       
      
      private var i:uint = 0;
      
      private var j:uint = 0;
      
      private var var_162:Array;
      
      public function RC4()
      {
         super();
         this.var_162 = new Array(256);
      }
      
      public function init(param1:ByteArray) : void
      {
         var _loc2_:uint = param1.length;
         this.i = 0;
         while(this.i < 256)
         {
            this.var_162[this.i] = this.i;
            ++this.i;
         }
         this.j = 0;
         this.i = 0;
         while(this.i < 256)
         {
            this.j = (this.j + this.var_162[this.i] + param1[this.i % _loc2_]) % 256;
            this.method_8(this.i,this.j);
            ++this.i;
         }
         this.i = 0;
         this.j = 0;
      }
      
      public function initFromState(param1:IEncryption) : void
      {
         var _loc2_:RC4 = param1 as RC4;
         this.var_162 = _loc2_.var_162.concat();
         this.i = _loc2_.i;
         this.j = _loc2_.j;
      }
      
      public function encipher(param1:ByteArray, param2:Boolean = false) : ByteArray
      {
         var _loc4_:* = 0;
         var _loc3_:ByteArray = new ByteArray();
         param1.position = 0;
         while(param1.bytesAvailable)
         {
            this.i = (this.i + 1) % 256;
            this.j = (this.j + this.var_162[this.i]) % 256;
            this.method_8(this.i,this.j);
            if(param2)
            {
               this.customHackScramble(this.var_162,this.i,this.j);
            }
            _loc4_ = uint((this.var_162[this.i] + this.var_162[this.j]) % 256);
            _loc3_.writeByte(this.var_162[_loc4_] ^ param1.readByte());
         }
         _loc3_.position = 0;
         return _loc3_;
      }
      
      protected function customHackScramble(param1:Array, param2:int, param3:int) : void
      {
      }
      
      public function decipher(param1:ByteArray) : ByteArray
      {
         var _loc3_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         param1.position = 0;
         while(param1.bytesAvailable)
         {
            this.i = (this.i + 1) % 256;
            this.j = (this.j + this.var_162[this.i]) % 256;
            this.method_8(this.i,this.j);
            _loc3_ = uint((this.var_162[this.i] + this.var_162[this.j]) % 256);
            _loc2_.writeByte(param1.readUnsignedByte() ^ this.var_162[_loc3_]);
         }
         _loc2_.position = 0;
         return _loc2_;
      }
      
      protected function method_8(param1:uint, param2:uint) : void
      {
         var _loc3_:Object = this.var_162[param1];
         this.var_162[param1] = this.var_162[param2];
         this.var_162[param2] = _loc3_;
      }
   }
}
