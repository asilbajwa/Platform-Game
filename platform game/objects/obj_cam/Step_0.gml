if !instance_exists(obj_guy_right) exit;


var _camwidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);


var _camX = obj_guy_right.x - _camwidth/2;
var _camY = obj_guy_right.y - _camHeight/2;


camera_set_view_pos(view_camera[0], _camX, _camY);

