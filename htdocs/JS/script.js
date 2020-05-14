 
// NAVBAR---------------------------------------------------------------
$(document).ready(function(){
  $('.sidenav').sidenav();
});

// MODAL
  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('.modal').modal();
  });


  // TABS

  // with jQuery
  $(document).ready(function(){
    $('.tabs').tabs();
  });
       