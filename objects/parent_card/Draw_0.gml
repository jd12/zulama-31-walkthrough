/// @description display the correct card given the suit

if not (suit == "none") {
	var spr_to_draw;
	// draw the card
	if (faceup) {
		// use switch statement to set which sprite to draw
		// given the suit
		switch (suit) {
			case "hearts":
				spr_to_draw = spr_hearts;
				break;
			case "diamonds":
				spr_to_draw = spr_diamonds;
				break;
			case "spades":
				spr_to_draw = spr_spades;
				break;
			case "clubs":
				spr_to_draw = spr_clubs;
				break;
		}
		draw_sprite(spr_to_draw, value, x, y);
	} else {
		draw_sprite(spr_card_back, 0, x, y);
	}
}
