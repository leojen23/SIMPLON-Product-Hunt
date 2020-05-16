 
// NAVBAR---------------------------------------------------------------
$(document).ready(function(){
  $('.sidenav').sidenav();
});

// MODAL
  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems, options);
  });

  // TABS
  $(document).ready(function(){
    $('.tabs').tabs();
  });
       




  
// // I apply an click event listener on all the card buttons
//   $upvoteBtns = document.querySelectorAll(".upvote-btn");
//   $upvoteBtns.forEach($upvoteBtns => $upvoteBtn.addEventListener("click", updateVote))

//   function updateVote(){
//     console.log("hello")

    
//     fetch();
//   }