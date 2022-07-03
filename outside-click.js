document.querySelector(".outside").addEventListener("click", function(evt) {
  if(document.querySelector('.inside').contains(evt.target) == false) {
     document.querySelector(".target").classList.toggle("active");
  }
});
