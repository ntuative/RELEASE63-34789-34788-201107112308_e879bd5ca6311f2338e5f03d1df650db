package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_372:int = 1;
      
      public static const const_214:int = 2;
      
      public static const const_268:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_304:int = 5;
      
      public static const const_446:int = 1;
      
      public static const const_806:int = 2;
      
      public static const const_898:int = 3;
      
      public static const const_951:int = 4;
      
      public static const const_264:int = 5;
      
      public static const const_786:int = 6;
      
      public static const const_753:int = 7;
      
      public static const const_439:int = 8;
      
      public static const const_549:int = 9;
      
      public static const const_2165:int = 10;
      
      public static const const_970:int = 11;
      
      public static const const_538:int = 12;
       
      
      private var var_435:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_435 = new Array();
         this.var_435.push(new Tab(this._navigator,const_372,const_538,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_577));
         this.var_435.push(new Tab(this._navigator,const_214,const_446,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_577));
         this.var_435.push(new Tab(this._navigator,const_346,const_970,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1258));
         this.var_435.push(new Tab(this._navigator,const_268,const_264,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_577));
         this.var_435.push(new Tab(this._navigator,const_304,const_439,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1387));
         this.setSelectedTab(const_372);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_435;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_435)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_435)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_435)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
