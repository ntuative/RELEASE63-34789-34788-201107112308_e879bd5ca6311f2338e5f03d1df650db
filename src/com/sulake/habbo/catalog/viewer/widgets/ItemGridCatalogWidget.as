package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.catalog.viewer.BundleProductContainer;
   import com.sulake.habbo.catalog.viewer.IDragAndDropDoneReceiver;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.ProductContainer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.session.ISessionDataManager;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ItemGridCatalogWidget extends CatalogWidget implements ICatalogWidget, IItemGrid, IDragAndDropDoneReceiver
   {
       
      
      protected var var_510:IItemGridWindow;
      
      protected var var_1795:XML;
      
      protected var var_238:IGridItem;
      
      private var var_1976:int = 0;
      
      protected var var_230:Timer;
      
      protected var var_221:Boolean = true;
      
      private var var_854:int = 0;
      
      private var _scrollBar:IScrollbarWindow;
      
      protected var var_32:ISessionDataManager;
      
      public function ItemGridCatalogWidget(param1:IWindowContainer, param2:ISessionDataManager)
      {
         super(param1);
         this._scrollBar = _window.findChildByName("itemGridScrollbar") as IScrollbarWindow;
         if(this._scrollBar != null)
         {
            this._scrollBar.visible = false;
            this._scrollBar.addEventListener(WindowEvent.const_979,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_297,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_867,this.deActivateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_247,this.deActivateScrollbar);
         }
         this.var_32 = param2;
      }
      
      override public function dispose() : void
      {
         if(this.var_230 != null)
         {
            this.var_230.stop();
            this.var_230.removeEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_230 = null;
         }
         if(this.var_510 != null)
         {
            this.var_510.destroyGridItems();
            this.var_510 = null;
         }
         this.var_1795 = null;
         this.var_238 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         this.var_510 = _window.findChildByName("itemGrid") as IItemGridWindow;
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("gridItem") as XmlAsset;
         this.var_1795 = _loc1_.content as XML;
         this.populateItemGrid();
         if(this.var_221)
         {
            this.var_230 = new Timer(25);
            this.var_230.addEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_230.start();
         }
         else
         {
            this.loadItemGridGraphics();
         }
         return true;
      }
      
      public function select(param1:IGridItem) : void
      {
         if(this.var_238 != null)
         {
            this.var_238.deActivate();
         }
         this.var_238 = param1;
         param1.activate();
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            events.dispatchEvent(new SelectProductEvent(_loc2_));
            if(_loc2_.productContainer.firstProduct.productType == ProductTypeEnum.const_65)
            {
               events.dispatchEvent(new SetExtraPurchaseParameterEvent(_loc2_.productContainer.firstProduct.extraParam));
            }
         }
      }
      
      public function startDragAndDrop(param1:IGridItem) : Boolean
      {
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            if(this.var_32.hasUserRight(null,_loc2_.clubLevel))
            {
               (page.viewer.catalog as HabboCatalog).requestSelectedItemToMover(this,_loc2_);
            }
         }
         return true;
      }
      
      public function onDragAndDropDone(param1:Boolean) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1)
         {
            events.dispatchEvent(new CatalogWidgetInitPurchaseEvent(false));
         }
      }
      
      public function stopDragAndDrop() : void
      {
      }
      
      protected function populateItemGrid() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in page.offers)
         {
            this.createGridItem(_loc1_);
            _loc1_.productContainer.grid = this;
         }
      }
      
      protected function resetTimer() : void
      {
         if(this.var_230 != null)
         {
            this.var_230.reset();
         }
         this.var_854 = 0;
      }
      
      protected function loadItemGridGraphics(param1:TimerEvent = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
         }
         var _loc2_:int = page.offers.length;
         if(_loc2_ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < 3)
            {
               if(this.var_854 >= 0 && this.var_854 < _loc2_)
               {
                  _loc4_ = page.offers[this.var_854];
                  this.loadGraphics(_loc4_);
                  _loc4_.productContainer.grid = this;
               }
               ++this.var_854;
               if(this.var_854 >= _loc2_)
               {
                  this.resetTimer();
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      private function activateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = true;
      }
      
      private function deActivateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = false;
      }
      
      protected function createGridItem(param1:Offer) : void
      {
         var _loc2_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(this.var_1795) as IWindowContainer;
         this.var_510.addGridItem(_loc2_);
         param1.productContainer.view = _loc2_;
         param1.productContainer.setClubIconLevel(param1.clubLevel);
         if((page.viewer.catalog as HabboCatalog).isDraggable(param1))
         {
            (param1.productContainer as IGridItem).setDraggable(true);
         }
         if(param1.pricingModel == Offer.const_508)
         {
            ++this.var_1976;
            (param1.productContainer as BundleProductContainer).setBundleCounter(this.var_1976);
         }
      }
      
      protected function loadGraphics(param1:Offer) : void
      {
         if(param1 != null && !param1.disposed)
         {
            param1.productContainer.initProductIcon(page.viewer.roomEngine);
         }
      }
   }
}
