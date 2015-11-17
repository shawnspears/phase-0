// Design Basic Game Solo Challenge

// This is a solo challenge

// ** Note: Still working on making this a functional game that can be played. Check back tomorrow for updates **

// Your mission description:
// Overall mission: You are trying to solve a murder mystery. You will be given three pieces of information at
//	the beginnging of the game: a person, a location, and a weapon. You have ruled out these three pieces of info
//	as being the information that you need to solve the mystery, so you must gather more clues.
// Goals: Keep gathering clues until you can correctly solve the mystery.
// Characters: Sherlock Holmes (main)
// Objects: Weapons, Locations, List of suspects, Murder info
// Functions: rollDie(), getInfo(), solve()

// Pseudocode
// Declare a character object "Sherlock" that will have property location
// Add different functions that Sherlock can use: rollDie to move locations, getInfo to gather information from
// the location, and solve in order to solve the mystery.
// Declare a function that rolls a 6 sided die that will move the character from one location to the next 
// depending on where they are (this will behave as a game board).
// Get info will provide the character with more information about the murder
// If the main chracter can't guess the mystery correctly within 10 turns, they lose!


// Initial Code

var weapons = ["Gun", "Cyanide", "Candlestick", "Sword", "Switchblade"]
var suspectList = ["Watson", "Irene", "Moriarty", "Mycroft", "Mrs. Hudson"]
var locations = ["Picadilly Circus", "Baker Street", "Buckingham Palace", "River Thames", "London Eye"]

var murderInfo = {
  murderWeapon: weapons[Math.floor(Math.random()*weapons.length)],
  murderer: suspectList[Math.floor(Math.random()*suspectList.length)],
  location: locations[Math.floor(Math.random()*locations.length)]
};

var sherlock = {
  name: "Sherlock Holmes",
};

var rollDie = function() {
  var roll = Math.ceil(Math.random() * 6);
  return roll;
};

var location = function() {
  return locations[Math.floor(Math.random()*locations.length)]
}

var getInfo = function() {
  murderInfo.location
    alert("Hmmm, this location seems rather interesting.")
}

var solve = function() {
  var guessWeapon = prompt("What was the murder weapon Sherlock?")
  var guessLocation = prompt("And where was this committed?")
  var guessSuspect = prompt("And who committed the crime?")
  if(guessWeapon === murderInfo.murderer && guessLocation === murderInfo.location && guessWeapon === murderInfo.weapon) {
    alert("Fantastic job Holmes, you solved the crime.")
  } else {
    alert("Looks like you have some more solving to do, Holmes.")
  }
};

// Refactored Code

var weapons = ["Gun", "Cyanide", "Candlestick", "Sword", "Switchblade"]
var suspectList = ["Watson", "Irene", "Moriarty", "Mycroft", "Mrs. Hudson"]
var locations = ["Picadilly Circus", "Baker Street", "Buckingham Palace", "River Thames", "London Eye"]

murderInfo = {
  murderWeapon: weapons[Math.floor(Math.random()*weapons.length)],
  murderer: suspectList[Math.floor(Math.random()*suspectList.length)],
  location: locations[Math.floor(Math.random()*locations.length)]
};

var sherlock = {
  name: "Sherlock Holmes",
};

var rollDie = function() {
  var roll = Math.ceil(Math.random() * 6);
  return roll;
};

var location = function() {
  return locations[Math.floor(Math.random()*locations.length)]
}

var getInfo = function() {
  murderInfo.location
    alert("Hmmm, this location seems rather interesting.")
}

var solve = function() {
  var guessWeapon = prompt("What was the murder weapon Sherlock?")
  var guessLocation = prompt("And where was this committed?")
  var guessSuspect = prompt("And who committed the crime?")
  if(guessWeapon === murderInfo.murderer && guessLocation === murderInfo.location && guessWeapon === murderInfo.weapon) {
    alert("Fantastic job Holmes, you solved the crime.")
  } else {
    alert("Looks like you have some more solving to do, Holmes.")
  }
};

// Reflection
// What was the most difficult part of this challenge?
//	The most difficult part for me was thinking of an idea for a game! I figured that a clue like game might
//	be fun to do, but I still have some work to do regarding linking it to HTML/CSS and making it playable on
// a browswer.
// What did you learn about creating objects and functions that interact with one another?
//	I feel like I understand the scope of certain objects more, and how I am able to pass different objects
//	as objects into another to make it interactive.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//	Not yet. Again, more things to consider when I have the time. I plan on completely refactoring the game this
//	week so that I can add it under my projects.
// How can you access and manipulate properties of objects?
//	Accessing properties is rather easy as you can utilize either dot or bracket notation, and then you can
//	assign it a new value from there.