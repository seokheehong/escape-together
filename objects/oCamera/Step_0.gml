// set position of camera, clamp it so that edges are compensated
var xCam = clamp(oPlayer.x - wCam/2, 0, room_width - wCam);
var yCam = clamp(oPlayer.y - hCam/2, 0, room_height - hCam);

// smooth out the camera
var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.10);	// lerp (cur pos, pos we want to go to, amount)
var newY = lerp(curY, yCam, 0.10);	// amount = 0.1: 10% of the way there instead of directly


// camera span
camera_set_view_pos(view_camera[0], xCam, yCam);

// parallax effect of the background
layer_x(layer_get_id("Background"), newX * 0.65);
layer_y(layer_get_id("Background"), newY * 0.65);