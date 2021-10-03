package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2190:int = 0;
      
      public static const const_2003:int = 1;
      
      public static const const_1867:int = 2;
      
      public static const const_2113:int = 3;
      
      public static const const_2162:int = 4;
      
      public static const const_2131:int = 5;
      
      public static const const_1856:int = 10;
      
      public static const const_2256:int = 11;
      
      public static const const_2328:int = 12;
      
      public static const const_2222:int = 13;
      
      public static const const_2226:int = 16;
      
      public static const const_2292:int = 17;
      
      public static const const_2276:int = 18;
      
      public static const const_2156:int = 19;
      
      public static const const_2332:int = 20;
      
      public static const const_2124:int = 22;
      
      public static const const_2300:int = 23;
      
      public static const const_2245:int = 24;
      
      public static const const_2303:int = 25;
      
      public static const const_2132:int = 26;
      
      public static const const_2117:int = 27;
      
      public static const const_2284:int = 28;
      
      public static const const_2176:int = 29;
      
      public static const const_2123:int = 100;
      
      public static const const_2147:int = 101;
      
      public static const const_2273:int = 102;
      
      public static const const_2235:int = 103;
      
      public static const const_2278:int = 104;
      
      public static const const_2314:int = 105;
      
      public static const const_2270:int = 106;
      
      public static const const_2253:int = 107;
      
      public static const const_2240:int = 108;
      
      public static const const_2183:int = 109;
      
      public static const const_2310:int = 110;
      
      public static const const_2108:int = 111;
      
      public static const const_2326:int = 112;
      
      public static const const_2317:int = 113;
      
      public static const const_2223:int = 114;
      
      public static const const_2137:int = 115;
      
      public static const const_2201:int = 116;
      
      public static const const_2186:int = 117;
      
      public static const const_2271:int = 118;
      
      public static const const_2319:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_2003:
            case const_1856:
               return "banned";
            case const_1867:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
