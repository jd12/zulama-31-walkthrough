/// @description Deal first hand

// deal out a hand
// set up an array to utilize in for loop
var initial_cards_to_deal = [player_card1, player_card2, player_card3, 
							 opponent_card1, opponent_card2, opponent_card3];

var is_faceup = true;
for (var i = 0; i < array_length_1d(initial_cards_to_deal); i++) {
	// deal player cards faceup and opponent cards facedown
	is_faceup = i < 3;
	
	func_deal_card(initial_cards_to_deal[i], is_faceup);
}

// deal card to discard pile
func_deal_card(discard_pile, true);

// allow human player to go first
global.turn = "player";

global.player_score = func_score_card(player_card1.value);