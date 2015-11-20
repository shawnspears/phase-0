/*
Gradebook from Names and Scores
I worked on this challenge [with: Mia Lehrer]
This challenge took me [1.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

var average = function(array) {
  var sum = 0;
  for(var i in array) {
    sum += array[i];
  };
  return (sum/array.length);
};

// __________________________________________
// Refactored Solution

var gradebook = {};

for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
};

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

var average = function(array) {
  var sum = array.reduce(function(a, b) {
    return a + b;
  });
  return (sum/array.length);
};

console.log(gradebook)

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
//  I learned that instead of assigning a function to a variable, you can just set an object
//  property as a function, which I personally think keeps the code more organized as all of 
//  the assocaited functions can be found as properties of the object. I feel as though I also 
//  solidified how to modify objects though the use of functions. For example the addScore
//  function modified the value of the testScores property (an arraay), by accessing the correct
//  student property. It was good to practice modidying property values as well as adding new 
//  properties to objects.

// How did you iterate over nested arrays in JavaScript?
//  We interated through nested array (seems like the only nested array was the scrores array)
//  by using a for loop and accessing the nested array with the score indices. We iterated 
//  over the indices by setting the variable "i" to index 0 and incrementing it every loop (i++).

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//  The only method that I wasn't familiar with was the array.reduce method that we found on
//  the MDN docs. I'm still rather confused about the sytnax used (a function as the parameter?)
//  but it was a much cleaner way to sum the values in the array than our initial for loop.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)