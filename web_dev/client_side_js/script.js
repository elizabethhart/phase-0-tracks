console.log("Hello!");

// function disappearingPhoto(event) {
// 	var photo = document.getElementById("examples");
// 	photo.hidden = true;
// }

// var photo = document.getElementById("examples");
// photo.addEventListener("click", disappearingPhoto);

var newParagraph = document.createElement("P");  
var newText = document.createTextNode("We added a paragraph!");
newParagraph.appendChild(newText); 
document.getElementById("examples").appendChild(newParagraph);