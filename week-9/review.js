// Release 1: User Stories

// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Release 2: Pseudocode

// Create a new list object
// Create an add function that takes the item and quantity as parameters
// Create a remove function that deletes the indicated item off the list
// Create an update unction that takes the item and quantity as parametets
// Create a function that prints each item and its quantity

//________________________________________
// Release 3: Initial Solution

// function newList(name) {
// 	this.items = {};
// 	console.log("Awesome, you just made a new grocery list called " + list.name + "!");
// 	console.log(list);
// }


// var addItem = function(item, quantity) {
//   list.items[item] = quantity;
// };

// newList();
// addItem("lemon", 1);

// function groceryList(name) {
//   this.name = name;
//   this.items = {};
// }

// var newList = function(name){
// var list = new groceryList(name);
// console.log("Awesome, you just made a new grocery list called " + list.name + "!");
//     list.items.item = "hello"
//     console.log(list);
// };

// groceryList.addItem = function(item, quantity) {
//   this.items[item] = quantity;
// };


// newList("Trader Joes");
// list.addItem("lemon", 2);

function Grocery(name){
	this.name = name;
	this.items = {};
};

Grocery.prototype.addItem = function(item, quantity) {
    this.items[item] = quantity;
};

Grocery.prototype.deleteItem = function(item) {
    delete this.items[item];
};

Grocery.prototype.updateQuantity = function(item, quantity) {
    this.items[item] = quantity;
};

Grocery.prototype.printList = function(name) {
	console.log(name);	
};

var list = new Grocery("Trader Joes")
list.addItem("lemon", 4);
list.addItem("cheese", 4);
list.addItem("bread", 4);
list.addItem("melon", 4);
list.printList(list);

//________________________________________
// Release 4: Refactor


function Grocery(name){
	this.name = name;
	this.items = {};
};

Grocery.prototype.addItem = function(item, quantity) {
    this.items[item] = quantity;
};

Grocery.prototype.deleteItem = function(item) {
    delete this.items[item];
};

Grocery.prototype.updateQuantity = function(item, quantity) {
    this.items[item] = quantity;
};

Grocery.prototype.printList = function(name) {
	console.log(name);	
};

var list = new Grocery("Trader Joes")
list.addItem("lemon", 4);
list.addItem("cheese", 4);
list.addItem("bread", 4);
list.addItem("melon", 4);
list.printList(list);




//________________________________________
// Release 5: Reflect

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// 	I feel as though I was able to solidify a bit on constructor functions in JS, as the last time
// 	we worked with them, it was incredibly brief. In my understanding, it functions fairly similarly
// 	to a Ruby class.
// What was the most difficult part of this challenge?
//	Honestly, what was fairly difficult for me to grasp was the fact that I was thinking long term 
//	(making this work via the DOM) and that messed with me head for a while. I couldn't logic through
//	how I would be able to make distinct lists and add items to either of them.
// Did an array or object make more sense to use and why?
//	An object made the most sense to me, as I figured I would want to associate the item with its
//	quantity in some way, and using an object made it easy to do so.

