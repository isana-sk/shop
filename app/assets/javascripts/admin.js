function addcat(){
   b=document.getElementById("show");
   a=document.getElementById("addCategory");
   s=document.getElementById("addSubCategory");
   if (a.style.display == 'none'){
      a.style.display = 'block';
      s.style.display = 'none';
      b.style.display = 'none'
   } else {
      a.style.display = 'none';
      s.style.display = 'block';
   }
}

function hide(){
   b=document.getElementById("show");
   a=document.getElementById("addCategory");
   s=document.getElementById("addSubCategory");
   if (a.style.display == 'block' || s.style.display == 'block'){
      a.style.display = 'none';
      s.style.display = 'none';
      b.style.display = 'block'
   } else {
      a.style.display = 'block';
      b.style.display = 'none';
   }
}

