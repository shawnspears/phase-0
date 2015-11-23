// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Syema Ailia.
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// PSUEDOCODE -- Tally the votes in voteCount.
// 1. Go through each property in in votes
// 2. Go into each subproperty in votes access position
// 3. Assign position a value of 0 (so that it isn't undefined)
// 4. Iterate through each subproperty and increment value by 1 each time
// 5. Assign the integer value to candidate property in position property in voteCount

// PSUEDOCODE -- Assign officer positions.
// 1. For each property in voteCount, obtain the value of the subproperty 
// 2. Create variable to compare subproperties 
// 3. Compare each subproperty's value to variable and assign variable to higher value
// 4. Assign officer position to the variable (which should be the highest)
// 5. Print officers

// __________________________________________
// Initial Solution

for(var voter in votes) {
  voteCount["president"][votes[voter]["president"]] = 0;
  voteCount["vicePresident"][votes[voter]["vicePresident"]] = 0;
  voteCount["secretary"][votes[voter]["secretary"]] = 0;
  voteCount["treasurer"][votes[voter]["treasurer"]] = 0;
};

for(var voter in votes) {
  voteCount["president"][votes[voter]["president"]]++;
  voteCount["vicePresident"][votes[voter]["vicePresident"]]++;
  voteCount["secretary"][votes[voter]["secretary"]]++;
  voteCount["treasurer"][votes[voter]["treasurer"]]++;
};

for(var position in voteCount) {
  var winner = 0;
  for(var candidate in voteCount[position])  {
    if(voteCount[position][candidate] > winner)  {
      winner = voteCount[position][candidate];
      officers[position] = candidate;
    };
  };
};  

console.log(voteCount);
console.log(officers);

// __________________________________________
// Refactored Solution

var tallyVotes = function(){
  for(var voter in votes) {
    for(var position in votes[voter]) {
    voteCount[position][votes[voter][position]] = 0;
    };
  };
  for(var voter in votes) {
    for(var position in votes[voter]) {
    voteCount[position][votes[voter][position]]++;
    };
  };
};

var assignPositions = function(){
  for(var position in voteCount) {
    var winner = 0;
    for(var candidate in voteCount[position])  {
      if(voteCount[position][candidate] > winner)  {
        winner = voteCount[position][candidate];
        officers[position] = candidate;
      };
    };
  };  
};

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

//  I learned that it was rather frustrating haha! By in all honesty, I learned that the most efficient
//  way to go about iterating over nested objects in JS is through for/in loops. I had very sparse
//  knowledge regarding for/in loops coming into the challenge, mainly relating to the fact that it
//  allows for a variable that accesses the property of an object. Apparently that is exactly what we
//  needed to do in the challenge, and it is clear that it really organizes/cleans the code up. A
//  comparison between the tally in the inital and refactored solution really shows this.

// Were you able to find useful methods to help you with this?

//  We didn't any any built in methods in the code, we really just iterated through the objects using
//  for/in loops and then assigned new properties from there.

// What concepts were solidified in the process of working through this challenge?

//  DEFINITELY iterating over nested objects. Other than that, just generally working from a good
//  psuedocode foundation and making sure each step of our logic checked out.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)