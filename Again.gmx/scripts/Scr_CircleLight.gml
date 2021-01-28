///Scr_CircleLight(x, y, raio, color1, color2);
var __x__ = argument[0];
var __y__ = argument[1];
var __r__ = argument[2];
var __c1__ = argument[3];
var __c2__ = argument[4];

if(!surface_exists(global.light)){
    global.light = surface_create(view_wview, view_hview);
}
draw_set_blend_mode(bm_subtract);
    surface_set_target(global.light);
        draw_ellipse_colour(__x__ - __r__ / 2 - view_xview, __y__ - __r__ / 2 - view_yview,
                            __x__ + __r__ / 2 - view_xview, __y__ + __r__ / 2 - view_yview,
                            __c1__, __c2__, false);
    surface_reset_target();
draw_set_blend_mode(bm_normal);
