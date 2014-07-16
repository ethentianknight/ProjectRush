#define window_activate
return __window_activate(window_handle());
#define window_restore
return __window_restore(window_handle());
#define window_minimize
return __window_send_taskbar(window_handle(), __sw_minimize);
#define window_maximize
return __window_maximize(window_handle());
#define window_get_active
return __window_get_active() == window_handle();
#define window_get_minimized
return __window_get_minimized(window_handle());
#define window_get_maximized
return __window_get_maximized(window_handle());
#define window_flash
return __window_flash(window_handle());
#define window_flash_taskbar
return __window_flash_taskbar(window_handle());
#define window_roll_in
if(__window_animate(window_handle(), argument2,
__window_flag_animation(argument0, argument1, __aw_roll)))
begin window_set_visible(true); return true; end;
return false;
#define window_roll_out
if(__window_animate(window_handle(), argument2,
__window_flag_animation(argument0, argument1, __aw_roll_hide)))
begin window_set_visible(false); return true; end;
return false;
#define window_slide_in
if(__window_animate(window_handle(), argument2,
__window_flag_animation(argument0, argument1, __aw_slide)))
begin window_set_visible(true); return true; end;
return false;
#define window_slide_out
if(__window_animate(window_handle(), argument2,
__window_flag_animation(argument0, argument1, __aw_slide_hide)))
begin window_set_visible(false); return true; end;
return false;
#define window_expand_in
if(__window_animate(window_handle(), argument0, __aw_center))
begin window_set_visible(true); return true; end;
return false;
#define window_collapse_out
if(__window_animate(window_handle(), argument0, __aw_center_hide))
begin window_set_visible(false); return true; end;
return false;
#define window_blend_in
if(__window_animate(window_handle(), argument0, __aw_blend))
begin window_set_visible(true); return true; end;
return false;
#define window_blend_out
if(__window_animate(window_handle(), argument0, __aw_blend_hide))
begin window_set_visible(false); return true; end;
return false;
#define window_set_showtaskbar
if(argument0)
return __window_send_taskbar(window_handle(), __sw_show);
return __window_send_taskbar(window_handle(), __sw_hide);
#define window_get_showtaskbar
return __window_get_showtaskbar(window_handle());
#define window_set_taskbar_caption
return __window_set_taskbar_caption(window_handle(), argument0);
#define window_get_taskbar_caption
return __window_get_taskbar_caption(window_handle());
#define window_set_icon
return __window_set_icon(window_handle(), argument0);
#define window_set_alttab_icon
return __window_set_alttab_icon(window_handle(), argument0);
#define window_set_taskbar_icon
return __window_set_taskbar_icon(window_handle(), argument0);
#define window_message_box
var i; i = 0;
repeat(string_length(argument2)) begin
if(string_char_at(argument2, i + 1) == '#') begin
if(string_char_at(argument2, i) == '\')
argument2 = string_delete(argument2, i, 1);
else begin
argument2 = string_copy(argument2, 1, i) +
chr(10) + string_delete(argument2, 1, i + 1);
i += 1; end; end;
else i += 1; end;
switch(argument4) begin
case 2: argument1 |= __md_second; break;
case 3: argument1 |= __md_third; end;
if(argument5) argument1 |= __mo_setforeground;
if(argument6) argument1 |= __mo_topmost;
return __window_message_box(window_handle(), argument0,
string_replace_all(argument2, chr(13), chr(10)), argument1 | argument3);
#define __window_flag_animation
switch(argument0) begin
case 1: argument2 |= __aw_hor_positive; break;
case -1: argument2 |= __aw_hor_negative; end;
switch(argument1) begin
case 1: argument2 |= __aw_ver_positive; break;
case -1: argument2 |= __aw_ver_negative; end;
return argument2;
