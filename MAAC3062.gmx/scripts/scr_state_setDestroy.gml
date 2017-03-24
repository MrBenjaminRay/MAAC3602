scr_state_clearControlObjects();
global.state = "Destroy";
instance_create(x, y, obj_control_destroyState);

cursor_sprite = spr_sell_cursor;
window_set_cursor(cr_none);


