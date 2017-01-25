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
	var arr = str.split('')
	var newArr = []
	for (var i = 0; i < arr.length; i++) {
		newIndex = arr.length - 1 - i
		newArr[i] = arr[newIndex]
	}
	return newArr.join('')
}

console.log(reverse('hello'));