package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_198:IWindowContainer;
      
      private var var_3091:int;
      
      private var var_411:RoomEventViewCtrl;
      
      private var var_412:Timer;
      
      private var var_159:RoomSettingsCtrl;
      
      private var var_296:RoomThumbnailCtrl;
      
      private var var_1082:TagRenderer;
      
      private var var_414:IWindowContainer;
      
      private var var_413:IWindowContainer;
      
      private var var_705:IWindowContainer;
      
      private var var_2075:IWindowContainer;
      
      private var var_2073:IWindowContainer;
      
      private var var_1337:IWindowContainer;
      
      private var var_999:ITextWindow;
      
      private var var_1079:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_879:ITextWindow;
      
      private var var_1334:ITextWindow;
      
      private var var_1080:ITextWindow;
      
      private var var_878:ITextWindow;
      
      private var var_1625:ITextWindow;
      
      private var var_297:IWindowContainer;
      
      private var var_882:IWindowContainer;
      
      private var var_1626:IWindowContainer;
      
      private var var_2076:ITextWindow;
      
      private var var_704:ITextWindow;
      
      private var var_2074:IWindow;
      
      private var var_1339:IContainerButtonWindow;
      
      private var var_1340:IContainerButtonWindow;
      
      private var var_1338:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1336:IContainerButtonWindow;
      
      private var var_1630:IButtonWindow;
      
      private var var_1629:IButtonWindow;
      
      private var var_1628:IButtonWindow;
      
      private var var_881:IWindowContainer;
      
      private var var_1335:ITextWindow;
      
      private var var_1081:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_880:IButtonWindow;
      
      private var var_1627:Boolean = false;
      
      private const const_869:int = 75;
      
      private const const_912:int = 3;
      
      private const const_747:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_411 = new RoomEventViewCtrl(this._navigator);
         this.var_159 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_296 = new RoomThumbnailCtrl(this._navigator);
         this.var_1082 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_159);
         this.var_412 = new Timer(6000,1);
         this.var_412.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_412)
         {
            this.var_412.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_412.reset();
            this.var_412 = null;
         }
         this._navigator = null;
         this.var_411 = null;
         this.var_159 = null;
         this.var_296 = null;
         if(this.var_1082)
         {
            this.var_1082.dispose();
            this.var_1082 = null;
         }
         this.var_198 = null;
         this.var_414 = null;
         this.var_413 = null;
         this.var_705 = null;
         this.var_2075 = null;
         this.var_2073 = null;
         this.var_1337 = null;
         this.var_999 = null;
         this.var_1079 = null;
         this._ownerName = null;
         this.var_879 = null;
         this.var_1334 = null;
         this.var_1080 = null;
         this.var_878 = null;
         this.var_1625 = null;
         this.var_297 = null;
         this.var_882 = null;
         this.var_1626 = null;
         this.var_2076 = null;
         this.var_704 = null;
         this.var_2074 = null;
         this.var_1339 = null;
         this.var_1340 = null;
         this.var_1338 = null;
         this._remFavouriteButton = null;
         this.var_1336 = null;
         this.var_1630 = null;
         this.var_1629 = null;
         this.var_1628 = null;
         this.var_881 = null;
         this.var_1335 = null;
         this.var_1081 = null;
         this._buttons = null;
         this.var_880 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_412.reset();
         this.var_411.active = true;
         this.var_159.active = false;
         this.var_296.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_412.reset();
         this.var_159.load(param1);
         this.var_159.active = true;
         this.var_411.active = false;
         this.var_296.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_159.active = true;
         this.var_411.active = false;
         this.var_296.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_412.reset();
         this.var_159.active = false;
         this.var_411.active = false;
         this.var_296.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1627 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_412.reset();
         this.var_411.active = false;
         this.var_159.active = false;
         this.var_296.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_912;
         this._window.y = this.const_869;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_198,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_198.height = Util.getLowestPoint(this.var_198);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_747;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_414);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_159.refresh(this.var_414);
         this.var_296.refresh(this.var_414);
         Util.moveChildrenToColumn(this.var_414,["room_details","room_buttons"],0,2);
         this.var_414.height = Util.getLowestPoint(this.var_414);
         this.var_414.visible = true;
         Logger.log("XORP: " + this.var_413.visible + ", " + this.var_1337.visible + ", " + this.var_705.visible + ", " + this.var_705.rectangle + ", " + this.var_414.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_297);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_411.refresh(this.var_297);
         if(Util.hasVisibleChildren(this.var_297) && !(this.var_159.active || this.var_296.active))
         {
            Util.moveChildrenToColumn(this.var_297,["event_details","event_buttons"],0,2);
            this.var_297.height = Util.getLowestPoint(this.var_297);
            this.var_297.visible = true;
         }
         else
         {
            this.var_297.visible = false;
         }
         Logger.log("EVENT: " + this.var_297.visible + ", " + this.var_297.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_159.active && !this.var_296.active && !this.var_411.active)
         {
            this.var_881.visible = true;
            this.var_1081.text = this.getEmbedData();
         }
         else
         {
            this.var_881.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_159.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_880)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_880.visible = _loc1_;
            if(this.var_1627)
            {
               this.var_880.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_880.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_159.active || this.var_296.active)
         {
            return;
         }
         this.var_999.text = param1.roomName;
         this.var_999.height = this.var_999.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_879.text = param1.description;
         this.var_1082.refreshTags(this.var_413,param1.tags);
         this.var_879.visible = false;
         if(param1.description != "")
         {
            this.var_879.height = this.var_879.textHeight + 5;
            this.var_879.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1340,"facebook_logo_small",_loc3_,null,0);
         this.var_1340.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1339,"thumb_up",_loc4_,null,0);
         this.var_1339.visible = _loc4_;
         this.var_878.visible = !_loc4_;
         this.var_1625.visible = !_loc4_;
         this.var_1625.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_413,"home",param2,null,0);
         this._navigator.refreshButton(this.var_413,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_413,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_999.y,0);
         this.var_413.visible = true;
         this.var_413.height = Util.getLowestPoint(this.var_413);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_413.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_159.active || this.var_296.active)
         {
            return;
         }
         this.var_1079.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1079.height = this.var_1079.textHeight + 5;
         this.var_1334.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1334.height = this.var_1334.textHeight + 5;
         Util.moveChildrenToColumn(this.var_705,["public_space_name","public_space_desc"],this.var_1079.y,0);
         this.var_705.visible = true;
         this.var_705.height = Math.max(86,Util.getLowestPoint(this.var_705));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_411.active)
         {
            return;
         }
         this.var_2076.text = param1.eventName;
         this.var_704.text = param1.eventDescription;
         this.var_1082.refreshTags(this.var_882,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_704.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_704.height = this.var_704.textHeight + 5;
            this.var_704.y = Util.getLowestPoint(this.var_882) + 2;
            this.var_704.visible = true;
         }
         this.var_882.visible = true;
         this.var_882.height = Util.getLowestPoint(this.var_882);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_159.active || this.var_296.active)
         {
            return;
         }
         this.var_1630.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1338.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1336.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1337.visible = Util.hasVisibleChildren(this.var_1337);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_411.active)
         {
            return;
         }
         this.var_1629.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1628.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1626.visible = Util.hasVisibleChildren(this.var_1626);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_198 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_414 = IWindowContainer(this.find("room_info"));
         this.var_413 = IWindowContainer(this.find("room_details"));
         this.var_705 = IWindowContainer(this.find("public_space_details"));
         this.var_2075 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2073 = IWindowContainer(this.find("rating_cont"));
         this.var_1337 = IWindowContainer(this.find("room_buttons"));
         this.var_999 = ITextWindow(this.find("room_name"));
         this.var_1079 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_879 = ITextWindow(this.find("room_desc"));
         this.var_1334 = ITextWindow(this.find("public_space_desc"));
         this.var_1080 = ITextWindow(this.find("owner_caption"));
         this.var_878 = ITextWindow(this.find("rating_caption"));
         this.var_1625 = ITextWindow(this.find("rating_txt"));
         this.var_297 = IWindowContainer(this.find("event_info"));
         this.var_882 = IWindowContainer(this.find("event_details"));
         this.var_1626 = IWindowContainer(this.find("event_buttons"));
         this.var_2076 = ITextWindow(this.find("event_name"));
         this.var_704 = ITextWindow(this.find("event_desc"));
         this.var_1340 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1339 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2074 = this.find("staff_pick_button");
         this.var_1338 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1336 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1630 = IButtonWindow(this.find("room_settings_button"));
         this.var_1629 = IButtonWindow(this.find("create_event_button"));
         this.var_1628 = IButtonWindow(this.find("edit_event_button"));
         this.var_881 = IWindowContainer(this.find("embed_info"));
         this.var_1335 = ITextWindow(this.find("embed_info_txt"));
         this.var_1081 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_880 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1338,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1630,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1336,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1629,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1628,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1081,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1339,this.onThumbUp);
         this.addMouseClickListener(this.var_2074,this.onStaffPick);
         this.addMouseClickListener(this.var_1340,this.onFacebookLike);
         this.addMouseClickListener(this.var_880,this.onZoomClick);
         this._navigator.refreshButton(this.var_1338,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1336,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_414,this.onHover);
         this.addMouseOverListener(this.var_297,this.onHover);
         this.var_1080.width = this.var_1080.textWidth;
         Util.moveChildrenToRow(this.var_2075,["owner_caption","owner_name"],this.var_1080.x,this.var_1080.y,3);
         this.var_878.width = this.var_878.textWidth;
         Util.moveChildrenToRow(this.var_2073,["rating_caption","rating_txt"],this.var_878.x,this.var_878.y,3);
         this.var_1335.height = this.var_1335.textHeight + 5;
         Util.moveChildrenToColumn(this.var_881,["embed_info_txt","embed_src_txt"],this.var_1335.y,2);
         this.var_881.height = Util.getLowestPoint(this.var_881) + 5;
         this.var_3091 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1081.setSelection(0,this.var_1081.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_323));
         this.var_1627 = !this.var_1627;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_412.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_159 != null)
         {
            this.var_159.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
