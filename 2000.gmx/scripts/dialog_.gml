/*
Show Dialog Script
Shows a dialog
argument0 is the text
argument1 is the background sprite
argument2 is the side image to show (use 0 for none)
argument3 is the delay time between letters (0 to show all at once)
*/

font_align=fa_center;
font_size=48;
for (i=0; i<=string_length(argument0); i+=1) {
draw_sprite(argument1,-1,room_width/2,room_height/2);
if sprite_exists(argument2)
draw_sprite(argument2,-1,room_width/4,room_height/2-sprite_get_height(argument2));
draw_text_ext(room_width/2,room_height/2,string_copy(argument0,0,i),-1,room_width/2);
//screen_refresh();
//sleep(argument3);
}
//keyboard_wait();
