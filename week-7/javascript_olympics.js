// JavaScript Olympics

// I paired [with: Ryan Zell] on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up

var athleteList = {
  name: "Sarah Hughes",
  event: "Ladies Single"
}

var athletes = [athleteList];

var win = function(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    console.log(athletes[i].win = athletes[i].name + " wins " + athletes[i].event); 
  };
}

win(athletes)
console.log(athleteList)

// Jumble your words

var reverse = function(str) {
  var result = str.split("").reverse().join("")
  console.log(result)
}

reverse("Hello")

// 2,4,6,8

var evens = function(array) {
  console.log(array.filter(function(value) {return value % 2 === 0}));                      
}

evens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?
//		We were both a tad intimidated coming into this challenge as we didn't think we were at the
//		level of knowledge that we wanted to be at coming into the challenge. I feel as though going
//		through the challenge not only helped me remember a lot of the JavaScript syntax that I had
//		forgotten (I learned JavaScript before Ruby), but also helped me realize that JavaScript was 
//		not going to be as inuitive as Ruby and that was okay! Other than that I feel like I had a
//		much better handle on creating functions, and using constructor functions as well!
// What are constructor functions?
//		In my understanding, constructor functions are used in order to  create a function for an
//		object type that specifies its name, properties, and associated methods. In the sense that it
//		will allow for the creation of new objects, I would say that it is somewhat similar in nature
//		to classes in Ruby, as the objects have shares behaviors and characteristics.
// How are constructors different from Ruby classes (in your research)?
//		Well this is quite relevant considering what I had just written in the previous question.. I 
//		think that constructors mainly differ from Ruby classes in that Ruby objects are inherited 
//		from class and JavaScript objects are created via object literal and constructor functions.
//		The objects' shared behavior in constructor functions however, can be inherited from function
//		prototypes, rather than Class methods in Ruby. Object literal functions, on the other hand, 
//		aren't meant to be reused for new objects.
