// Psuedocode for a function that takes a string as a parameter and reverse the string

// Assign a variable to the string

// Separate the string into an array with each character in an index

// Determine the length of the array

// For each character

	// Starting with the first, assign it the contents of the last index in the array
	// Subtract one from the last index, assign its contents to the next character in the array
	// Repeat until the index value reaches 0

// Add all characters back into one string

function reverse(str) {
	var arr = str.split('');
	var newArr = [];
	for (var i = 0; i < arr.length; i++) {
		newIndex = arr.length - 1 - i;
		newArr[i] = arr[newIndex];
	}
	return newArr.join('');
}

// Driver Code for user to input a string

console.log("What string would you like reversed?");
var str = prompt("Enter a string:");
console.log(reverse(str));

// Driver Code with conditional statement

if ((4 - 1) > (4 / 2)) {
	console.log(reverse(str))
}