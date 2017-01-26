// write a function that takes an array of words or phrases and returns the longest word or phrase 

// for each string in the array 
		// check if the length of string is less than the following strings in the array
		// if so 
			// write a new variable with the first string
			// then reassign the first string the value of the longer string
			// then reassign the longer string the value of the first string
			// (this will move the longest values to the front of the array)
		// else 
			// rerun the loop for the next value in the array
// return the first value of the array

// write a function that takes two objects and checks to see if the objects share at least one key value pair



// write a function that takes an integer for length and builds and returns an array of strings of the given length, the strings have random lengths betweeen 1 and 10

function longest_string(arr) {
	for (var i = 0; i < arr.length; i++) {
		for (var x = i + 1; x < arr.length; x++) {
			if (arr[i].length < arr[x].length) {
				// getting undefined length property error for the above line of code
				var placeholder = arr[i];
				arr[i] = arr[x];
				arr[x] = arr[placeholder];
			}
		}
	}
	return arr;
}

var arr = ["long phrase","longest phrase","longer phrase"];

console.log(longest_string(arr));