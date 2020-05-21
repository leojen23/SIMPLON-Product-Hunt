
// TABS
  $(document).ready(function(){
    $('.tabs').tabs();
  
// NAVBAR---------------------------------------------------------------

  $('.sidenav').sidenav();

// MODAL

  $('.modal').modal();
});



// REQUETE FETCH


// je fais ma request fetch
function upVote (productId){
  const formData = new FormData();
  formData.append("productId", productId);

  let myRequest = fetch('../PDO/votes.php',{
    method: "POST",
    body: formData
  });

  myRequest
    .then(jsonResponse => jsonResponse.text())
    .then(responseData => {

      console.log(responseData);
    })

}
      










// je .json() la réponse

// je display les datas




