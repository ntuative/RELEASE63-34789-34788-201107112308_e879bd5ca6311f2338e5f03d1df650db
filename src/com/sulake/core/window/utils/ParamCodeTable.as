package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["HabboModerationCom_issue_browser_xml"] = const_186;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1171;
         param1["embedded_controller"] = const_1355;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_996;
         param1["mouse_dragging_target"] = const_262;
         param1["mouse_dragging_trigger"] = const_433;
         param1["mouse_scaling_target"] = const_329;
         param1["mouse_scaling_trigger"] = const_512;
         param1["horizontal_mouse_scaling_trigger"] = const_310;
         param1["vertical_mouse_scaling_trigger"] = const_246;
         param1["observe_parent_input_events"] = const_1279;
         param1["optimize_region_to_layout_size"] = const_511;
         param1["parent_window"] = const_1394;
         param1["relative_horizontal_scale_center"] = const_226;
         param1["relative_horizontal_scale_fixed"] = const_179;
         param1["relative_horizontal_scale_move"] = const_398;
         param1["relative_horizontal_scale_strech"] = const_461;
         param1["relative_scale_center"] = const_1334;
         param1["relative_scale_fixed"] = const_992;
         param1["relative_scale_move"] = const_1270;
         param1["relative_scale_strech"] = const_1244;
         param1["relative_vertical_scale_center"] = const_210;
         param1["relative_vertical_scale_fixed"] = const_178;
         param1["relative_vertical_scale_move"] = const_299;
         param1["relative_vertical_scale_strech"] = const_341;
         param1["on_resize_align_left"] = const_858;
         param1["on_resize_align_right"] = const_657;
         param1["on_resize_align_center"] = const_529;
         param1["on_resize_align_top"] = const_949;
         param1["on_resize_align_bottom"] = const_548;
         param1["on_resize_align_middle"] = const_631;
         param1["on_accommodate_align_left"] = const_1392;
         param1["on_accommodate_align_right"] = const_612;
         param1["on_accommodate_align_center"] = const_881;
         param1["on_accommodate_align_top"] = const_1411;
         param1["on_accommodate_align_bottom"] = const_590;
         param1["on_accommodate_align_middle"] = const_1009;
         param1["route_input_events_to_parent"] = const_600;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1226;
         param1["scalable_with_mouse"] = const_1228;
         param1["reflect_horizontal_resize_to_parent"] = const_602;
         param1["reflect_vertical_resize_to_parent"] = const_504;
         param1["reflect_resize_to_parent"] = const_350;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1405;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
