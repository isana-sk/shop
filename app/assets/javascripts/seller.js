function addpro(){
  a = document.getElementById("show");
  b = document.getElementById("add");
  if (b.style.display == "none"){
    a.style.display = "none";
    b.style.display = "block";
  } else {
    a.style.display = "block";
    b.style.display = "none";
  }
}