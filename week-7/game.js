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

murderInfo = {
	murderWeapon: weapons[Math.floor(Math.random()*weapons.length],
	murderer: suspectList[Math.floor(Math.random()*suspectList.length],
	location: locations[Math.floor(Math.random()*locations.length]
}

var Sherlock = {
	name: "Sherlock Holmes"
	location: rollDie();
}

var rollDie = function() {
	var roll = Math.ceil(Math.random() * 6)
}

var getInfo = {
	if Sherlock.location = murderInfo.location
		alert("Hmmm, this location seems rather interesting.")
}

var solve = {
	var guessWeapon = prompt("What was the murder weapon Sherlock?")
	var guessLocation = prompt("And where was this committed?")
	var guessSuspect = prompt("And who committed the crime?")
	if(guessWeapon === murderInfo.murderer && guessLocation === murderInfo.location && guessWeapon = murderInfo.weapon) {
		alert("Fantastic job Holmes, you solved the crime.")
	} else {
		alert("Looks like you have some more solving to do, Holmes.")
	}
}
// Refactored Code

var weapons = ["Gun", "Cyanide", "Candlestick", "Sword", "Switchblade"]
var suspectList = ["Watson", "Irene", "Moriarty", "Mycroft", "Mrs. Hudson"]
var locations = ["Picadilly Circus", "Baker Street", "Buckingham Palace", "River Thames", "London Eye"]

murderInfo = {
	murderWeapon: weapons[Math.floor(Math.random()*weapons.length],
	murderer: suspectList[Math.floor(Math.random()*suspectList.length],
	location: locations[Math.floor(Math.random()*locations.length]
}

var Sherlock = {
	name: "Sherlock Holmes"
	location: rollDie();
}

var rollDie = function() {
	var roll = Math.ceil(Math.random() * 6);
	var location = locations[Math.floor(Math.random()*locations.length];
	return location;
}


var getInfo = {
	if Sherlock.location = murderInfo.location
		alert("Hmmm, this location seems rather interesting.")
}

var solve = {
	var guessWeapon = prompt("What was the murder weapon Sherlock?")
	var guessLocation = prompt("And where was this committed?")
	var guessSuspect = prompt("And who committed the crime?")
	if(guessWeapon === murderInfo.murderer && guessLocation === murderInfo.location && guessWeapon = murderInfo.weapon) {
		alert("Fantastic job Holmes, you solved the crime.")
	} else {
		alert("Looks like you have some more solving to do, Holmes.")
	}
}

// Reflection
// What was the most difficult part of this challenge?
// What did you learn about creating objects and functions that interact with one another?
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// How can you access and manipulate properties of objects?