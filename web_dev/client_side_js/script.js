console.log("Hello!");


function disappearingPhoto(event) {
	var photoDiv = document.getElementById("examples");
	var photo = document.getElementsByTagName("img");
	var photo1 = photo[0];
	var photo2 = photo[1];
	var photo3 = photo[2];
	photoDiv.removeChild(photo1);
	photoDiv.removeChild(photo2);
	photoDiv.removeChild(photo3);
	var newParagraph = document.createElement("P");  
	var newText = document.createTextNode("The photos disappeared!");
	newParagraph.appendChild(newText); 
	document.getElementById("examples").appendChild(newParagraph);
}

var photo = document.getElementById("examples");
photo.addEventListener("click", disappearingPhoto);