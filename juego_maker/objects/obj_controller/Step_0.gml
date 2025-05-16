/// @description User input & win conditions

//user input
if(keyboard_check_pressed(ord("R"))) room_restart();
if(keyboard_check_pressed(vk_escape)) game_restart();


//win conditions
if(matches_found == total_matches)
{
	show_debug_message("you won! Press any key to restart!");
	matches_found = -1;
}

if(matches_found < 0)
{
	if(keyboard_check_pressed(vk_anykey)) room_restart();
}