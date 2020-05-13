<?php 
include './PDO/get_products.php';
?>

<section class="container popular-products ">
  <div class="row">
      <div class="col s12 left-align brown-text lighten-2">
          <h2>Most popular products</h2>
      </div>
  </div>

  <div class="row ">
  <!-- PRODUCT CARD DISPLAY -->
  <?php foreach($top4PopularProducts as $top4PopularProduct): ?>
    <div class="col s12 m6 l3 center-align">


      <div class="card hoverable small card-small center-align">

        <div class="card-image">
          <img src="<?= $top4PopularProduct["logo"]?>" alt="">
        </div>

        <div class="card-content ">
          <span class="card-title brown-text lighten-2"><?= $top4PopularProduct["name"]?></span>
          <span class="card-category "><?= $top4PopularProduct["category"]?></span>
          <p><?= $top4PopularProduct["description"]?></p>
          <a class=" secondary-content waves-effect #bcaaa4 brown lighten-2 btn upvote-btn" type="submit">
            <i class="material-icons left">keyboard_arrow_up</i><?= $top4PopularProduct["vote_count"]?>
          </a>  
         
        </div>

        <!-- Modal Trigger -->
        <div class="card-action">
          <a href="#modal1" class="modal-trigger brown-text lighten-2">FIND OUT MORE</a>
        </div>
      </div>
    </div>
    <?php endforeach;?>

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

