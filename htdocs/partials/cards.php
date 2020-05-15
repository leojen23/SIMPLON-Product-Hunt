<?php 
include './PDO/get_products.php';
?>


<section class=" popular-product container">
  <div class="row">
      <div class="col s12 left-align brown-text lighten-2">
          <h2>Most popular products</h2>
      </div>
  </div>

  <div class="row">
    <?php foreach($top4PopularProducts as $top4PopularProduct): ?>
      <div class="col s12 m6 l3 ">
        <div class="center-align card-container">
          <div class="card hoverable">
              <div class="card-img-holder">
                <img class="reponsive-img" src="<?= $top4PopularProduct["logo"]?>" alt="">
              </div>
              <div class="card-info ">
                <span class="card-title brown-text darken-2"><?= $top4PopularProduct["name"]?></span>
                <span class="card-category "><?= $top4PopularProduct["category"]?></span>
                <p><?= $top4PopularProduct["description"]?></p>
                
                
                
                  
                  <a href="./PDO/send_votes.php?productId=<?=$top4PopularProduct["id"]?>" class=" waves-effect btn upvote-btn card-button" type="submit">
                    <i class="material-icons left">keyboard_arrow_up</i><?= $top4PopularProduct["vote_count"]?>
                  </a>
                



                <div class="card-action">
                <a href="#modal1" class="modal-trigger brown-text lighten-2">FIND OUT MORE</a>
                </div>
              </div>
          </div>
      </div>
      </div>
    <?php endforeach;?>
  </div>
</section>

<!-- Modal Structure -->
<div id="modal1" class="modal">
  <div class="modal-content">
    <h4>Modal Header</h4>
    <p>A bunch of text</p>
  </div>
  <div class="modal-footer">
    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
  </div>
</div>











