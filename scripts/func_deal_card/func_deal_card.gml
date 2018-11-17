// deal a card from the top of the deck and 
// store it in the supplied card object
card = argument0;
card.faceup = argument1;

// save the suit and value in the card object
card.suit = global.deck[global.deck_index, 0]; // get the suit of the top card
card.value = global.deck[global.deck_index, 1]; // get the card value of the top card

// increment the deck to take the card out of the deck
global.deck_index++;

// reached the end of the deck
if (global.deck_index == NUM_CARDS_IN_DECK) {
	global.game_over = true;
}

