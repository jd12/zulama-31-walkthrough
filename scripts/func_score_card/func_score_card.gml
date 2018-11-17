// return the true value of the supplied card
var val = argument0;

// first add one since this was an array index that started at 0
val++;

// check for jack, queen, or king - all worth 10 points
if (val > 10) {
	val = 10;
} else if (val == 1) {
	val = 11;
}

return val;	