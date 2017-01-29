// write a function that takes an array of words or phrases and returns the longest word or phrase 

// for each string in the array 
		// check if the length of first string is less than the following strings in the array
		// if so 
			// write a new variable with the longest string string
		// else 
			// rerun the loop for the next value in the array
// return the first value of the array

function longestString(arr) {
  var maxIndex = 0;
  var maxLength = arr[maxIndex].length;
	for (var i = 0; i < arr.length; i++) {
	  var nextLength = arr[i].length;
	  if (maxLength < nextLength) {
	    maxIndex = i;
	    maxLength = arr[i].length;
	    maxString = arr[i];
	  }
  }
  return maxString;
}

// write a function that takes two objects and checks to see if the objects share at least one key value pair

// for each key-value pair in the first object
	// check if the key-value pair equals any of the key-value pairs in the second object
		// if so
			// return true
			// break
		// else
			// return false

function sharePair(obj1,obj2) {
  	var outcome = false;
		for (var i = 0; i < Object.keys(obj1).length; i++) {
			for (var x = 0; x < Object.keys(obj2).length; x++) {
				if (Object.values(obj1)[i] === Object.values(obj2)[x]) {
				outcome = true;
				}
			}
		}
	return outcome;
}

// write a function that takes an integer for length and builds and returns an array of strings of the given length, the strings have random lengths betweeen 1 and 10

// create an array of characters for each letter in the alphabet
// create an empty array
// for integer number of times
  // create an empty string
  // for a random number of times between 1 and 10
    // select a random index in the alphabet array
    // push the letter from that array into the empty string
  // add the string into the array
// return the array

function buildArray(integer) {
  var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z"];
  var arr = [];
  for (var i = 0; i < integer; i++) {
    var randLength = Math.ceil(Math.random()*10);
    var str = "";
    for (var x = 0; x < randLength; x++) {
      var idx = Math.floor(Math.random()*25);
      var char = alphabet[idx];
      str += char;
    }
    arr.push(str);
  }
  return arr;
}

var arr1 = ["long phrase","longest phrase","longer phrase"];

console.log(longestString(arr1));

var arr2 = ["betsy","eliza","elizabeth","beth"]

console.log(longestString(arr2));

var object1 = { name: "Big Bird", age: 5, location: "Sesame Street" };
var object2 = { name: "Oscar the Grouch", age: 13, location: "Garbage Can" };

console.log(sharePair(object1,object2));

var object3 = { name: "Bruce Wayne", location: "Gotham" };
var object4 = { name: "Batman", location: "Gotham" };

console.log(sharePair(object3,object4));

for (var i = 0; i < 10; i++) {
	testArray = buildArray(5);
	console.log(testArray);
	console.log(longestString(testArray));
}


