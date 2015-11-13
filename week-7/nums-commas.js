// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jessie Richardson.

// Pseudocode

// 1. Turn argument integer into a string.
// 2. Create conditional statement- if string.length < 4, print number.
// 3. Split string into an array.
// 4. Iterate through array and insert comma every 3 indexes.
// 5. Join array and reverse.
// 6. Print string

// Initial Solution

var separateComma = function(num) {
  var stringNum = num.toString();
  var arrayNum = stringNum.split("");
  for (var i = -3; i > (-arrayNum.length); i += -4) {
    arrayNum.splice(i, 0, ",");
  };
  var result = arrayNum.join("");
  console.log(result);
};


// Refactored Solution

var separateComma = function(num) {
  var arrayNum = num.toString().split("");
  for (var i = -3; i > (-arrayNum.length); i += -4) {
    arrayNum.splice(i, 0, ",");
  };
  console.log(arrayNum.join(""));
};

separateComma(1234)

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof num === 'number'),
  "The value of num should be a number.",
  "1. "
)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//	Approaching the problem from a JavaScript perspective was rather difficult when it came to translating
//	the psuedocode. I noticed that the pseudocode that we created was vague enough to be used in Ruby, so 
//	I automatically went into Ruby mode and started thinking of ways I could implement it in that language.
//	Obviously this was a JavaScript challenge though, and reverted my focus to thinking, okay what could
//	iterate over an array in JavaScript -- "oh, a for loop could work here!", and then worked from there.
// What did you learn about iterating over arrays in JavaScript?
//	I learned that you can't just implement something like array.each, and that I would definitely need to
//	get back into the hang of being comfortable with using for loops to iterate over arrays. The only thing
//	that really trips me up is the middle condition for the for loop that tells the loop when to stop.
// What was different about solving this problem in JavaScript?
//	Not a whole lot, actually. The only difference was that we had to use a for loop instead of array.each,
//	and I needed to look up a built-in method to insert values into arrays.
// What built-in methods did you find to incorporate in your refactored solution?
//	The splice method was perfect for this challenge, as it will add/delete values in an array! It even 
//	accounted for the fact that we wanted to start adding values at the end of the array (just need to
//	set the index number to negative). In this case we started at index -3, which starts from the end of
//	the array and counts to the third index, didn't want to remove the value so we set the middle value 
//	of the method to 0, and then set the last value as what we wanted to insert, so ",". At the end it
//	looked like this: array.splice(-3, 0, ","). 