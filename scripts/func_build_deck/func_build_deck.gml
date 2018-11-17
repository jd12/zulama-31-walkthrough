// this function builds and shuffles a deck of cards
#macro NUM_SUITS 4
#macro NUM_CARDS_IN_SUIT 13
#macro NUM_CARDS_IN_DECK 52 
#macro SHUFFLE_TIMES 4

// build a deck 
// create an array to hold the suit names 
suits[0] = "hearts";
suits[1] = "diamonds";
suits[2] = "spades";
suits[3] = "clubs";

var i = 0;


for (var s = 0; s < NUM_SUITS; s++) {
	for (var v = 0; v < NUM_CARDS_IN_SUIT; v++) {
		global.deck[i, 0] = suits[s]; // store the suit
		global.deck[i, 1] = v; // store the face value
		i++; // next card
	}
}

randomize();
// shuffle deck
for (var j = 0; j < SHUFFLE_TIMES; j++) {
	for (var k = 0; k < NUM_CARDS_IN_DECK; k++) {
		temp[0] = global.deck[k, 0]; // store the card's suit
		temp[1] = global.deck[k, 1]; // store the card's value
		swap = irandom(NUM_CARDS_IN_DECK - 1); // pick a card to swap with
		
		// set this card to the random card picked
		global.deck[k, 0] = global.deck[swap, 0];
		global.deck[k, 1] = global.deck[swap, 1];
		
		// set the random card to the indexed card, finishing the swap
		global.deck[swap, 0] = temp[0];
		global.deck[swap, 1] = temp[1];
	}
}

// print deck 
for (i = 0; i < NUM_CARDS_IN_DECK; i++) {
	show_debug_message(global.deck[i,0]);
	show_debug_message(global.deck[i,1]);
}
	
