console.log("This is the console!");

function redBorder(event) {
  console.log("You clicked.");
  console.log(event);
  event.target.style.border = "10px red solid";
}

var photo = document.getElementById("abe-photo");
photo.addEventListener("click", redBorder);