package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_956;
         param1["badge"] = const_807;
         param1["bitmap"] = const_462;
         param1["border"] = const_943;
         param1["border_notify"] = const_2011;
         param1["bubble"] = const_845;
         param1["bubble_pointer_up"] = const_1251;
         param1["bubble_pointer_right"] = const_1303;
         param1["bubble_pointer_down"] = const_1290;
         param1["bubble_pointer_left"] = const_1230;
         param1["button"] = const_588;
         param1["button_thick"] = const_778;
         param1["button_icon"] = const_1887;
         param1["button_group_left"] = const_935;
         param1["button_group_center"] = const_868;
         param1["button_group_right"] = const_734;
         param1["canvas"] = const_1004;
         param1["checkbox"] = const_1022;
         param1["closebutton"] = const_1264;
         param1["container"] = const_424;
         param1["container_button"] = const_772;
         param1["display_object_wrapper"] = const_837;
         param1["dropmenu"] = const_672;
         param1["dropmenu_item"] = const_617;
         param1["frame"] = const_445;
         param1["frame_notify"] = const_1986;
         param1["header"] = const_999;
         param1["html"] = const_1310;
         param1["icon"] = const_1397;
         param1["itemgrid"] = const_1361;
         param1["itemgrid_horizontal"] = const_556;
         param1["itemgrid_vertical"] = const_783;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_407;
         param1["itemlist_vertical"] = const_419;
         param1["label"] = const_950;
         param1["maximizebox"] = const_2036;
         param1["menu"] = const_1941;
         param1["menu_item"] = const_2022;
         param1["submenu"] = const_1213;
         param1["minimizebox"] = const_2027;
         param1["notify"] = const_1839;
         param1["HabboModerationCom_issue_browser_xml"] = const_847;
         param1["password"] = const_820;
         param1["radiobutton"] = const_800;
         param1["region"] = const_325;
         param1["restorebox"] = const_1984;
         param1["scaler"] = const_515;
         param1["scaler_horizontal"] = const_1998;
         param1["scaler_vertical"] = const_1806;
         param1["scrollbar_horizontal"] = const_640;
         param1["scrollbar_vertical"] = const_827;
         param1["scrollbar_slider_button_up"] = const_1357;
         param1["scrollbar_slider_button_down"] = const_1335;
         param1["scrollbar_slider_button_left"] = const_1277;
         param1["scrollbar_slider_button_right"] = const_1306;
         param1["scrollbar_slider_bar_horizontal"] = const_1227;
         param1["scrollbar_slider_bar_vertical"] = const_1398;
         param1["scrollbar_slider_track_horizontal"] = const_1281;
         param1["scrollbar_slider_track_vertical"] = const_1225;
         param1["scrollable_itemlist"] = const_1730;
         param1["scrollable_itemlist_vertical"] = const_505;
         param1["scrollable_itemlist_horizontal"] = const_1329;
         param1["selector"] = const_995;
         param1["selector_list"] = const_760;
         param1["submenu"] = const_1213;
         param1["tab_button"] = const_790;
         param1["tab_container_button"] = const_1186;
         param1["tab_context"] = const_403;
         param1["tab_content"] = const_1342;
         param1["tab_selector"] = const_857;
         param1["text"] = const_1023;
         param1["input"] = const_740;
         param1["toolbar"] = const_1850;
         param1["tooltip"] = const_414;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
