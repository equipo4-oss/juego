/// @description User Input on cards

//Only 2 cards will be open at the same time;
if(obj_controller.flipped_tiles == 2) exit;

// only if the card is not flip and flipping is legal move
if(flipped == false and obj_controller.can_flip)
{
		
	// Mark card as flipped
	flipped = true;
	
	// Trigger flipping animation
	is_flipping = true;
	
	// Retrieve the card id
	sprite_to_change = id.type; 
	
	// check if is already other card opened
	if(obj_controller.flipped_tiles == 0) // if not...
	{
		// store the id 
		obj_controller.last_tile = id;
		// record that a card is opened
		obj_controller.flipped_tiles++;
	}
	// if is already other card opened
	else if(obj_controller.flipped_tiles == 1)
	{
		// record that a card is opened
		obj_controller.flipped_tiles++;
		
		// check if the card matches the a card that already is opened
		if(obj_controller.last_tile.type == id.type) // if matches...
		{
			show_debug_message("match!");
			// set the open cards to 0
			obj_controller.flipped_tiles = 0;
			// record that a match found
			obj_controller.matches_found++;
		}
		// if not matches...
		else
		{
			show_debug_message("not a match!")
			// Flip the card back after 60 steps
			alarm[0] = 60;
		}
	}
		
}