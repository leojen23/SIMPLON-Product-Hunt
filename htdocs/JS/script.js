
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
    .then(jsonResponse =>{
      if(jsonResponse.status == 200){
        return jsonResponse.text()
      }else{
        console.log("error request");
      }
    }) 
    .then(vote => {
      let upVoteBtn = document.querySelector(".upvote-btn");
      upVoteBtns.forEach(upVoteBtn => {
        upVoteBtn.textContent = vote;
      })
    })
}
      










// je .json() la réponse

// je display les datas




