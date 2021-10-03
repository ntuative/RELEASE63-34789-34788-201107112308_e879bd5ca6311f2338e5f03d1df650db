package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1083:BigInteger;
      
      private var var_2745:BigInteger;
      
      private var var_2012:BigInteger;
      
      private var var_2776:BigInteger;
      
      private var var_1598:BigInteger;
      
      private var var_2011:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1598 = param1;
         this.var_2011 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1598.toString() + ",generator: " + this.var_2011.toString() + ",secret: " + param1);
         this.var_1083 = new BigInteger();
         this.var_1083.fromRadix(param1,param2);
         this.var_2745 = this.var_2011.modPow(this.var_1083,this.var_1598);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2012 = new BigInteger();
         this.var_2012.fromRadix(param1,param2);
         this.var_2776 = this.var_2012.modPow(this.var_1083,this.var_1598);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2745.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2776.toRadix(param1);
      }
   }
}
