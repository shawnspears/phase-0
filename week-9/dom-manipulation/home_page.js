// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Trevor Newcomb].
// * Reflection located in HTML file *

// Add your JavaScript calls to this page:


// Release 0:

var done = document.getElementById("release-0");
done.className = "done";
document.getElementsByClassName("done");

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:

document.getElementById("release-2").innerHTML = "I completed release 2.";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 4:

var x = document.getElementsByClassName("release-4");
var i;
for (i = 0; i < x.length; i++) {
    x[i].style.fontSize = "2em";
}

// Release 5:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));
