<?php include './PDO/get_products.php';

?>



<section class=" popular-product container">
  <div class="row">
      <div class="col s12 left-align brown-text lighten-2">
          <h2>Most popular products</h2>
      </div>
  </div>
  <div class="row">
    <?php for ($i=0; $i < 4 ; $i++):
          $getModalInfosStatement= $db->prepare("SELECT
          `category_id`,
          `products`.`name`,
          `l_description`,
          `s_description`,
          `logo`,
          `video`,
          `categories`.`name` AS `category_name`,
          `created_at`,
          COUNT(`votes`.`product_id`) AS `vote_count`

          FROM
          `products`
          LEFT JOIN `votes`
          ON `products`.`id` = `votes`.`product_id`
          LEFT JOIN `categories`
          ON `products`.`category_id`= `categories`.`id`
          
          WHERE `products`.`id`= ?");


          $getModalInfosStatement->execute([$products[$i]["id"]]);
          $modalProductInfo = $getModalInfosStatement->fetch(); ?>

        <div class="col s12 m6 l3 ">
          <div class="center-align card-container">
            <div class="card hoverable">
                <div class="card-img-holder">
                  <img class="reponsive-img" src="<?= $products[$i]["logo"]?>" alt="">
                </div>
                <div class="card-info ">
                  <span class="card-title brown-text darken-2"><?=$products[$i]["name"]?></span>
                  <span class="card-category "><?=$products[$i]["category_name"]?></span>
                  <p><?=$products[$i]["description"]?></p>
                  
          
                  <a href="./PDO/votes.php?productId=<?=$products[$i]["id"]?>" class=" waves-effect btn upvote-btn card-button" type="submit">
                    <i class="material-icons left">keyboard_arrow_up</i><?=$products[$i]["vote_count"]?>
                  </a>
                
                  <div class="card-action">
                    
                  <a href="#<?=$products[$i]["id"]?>" type="submit" class="modal-trigger brown-text lighten-2">FIND OUT MORE</a>
                  </div>
                </div>
            </div>
          </div>
        </div>

        <div id="<?=$products[$i]["id"]?>" class="modal">
          <div class="modal-content">
            <h4><?=$modalProductInfo["name"]?></h4>
            <video class="responsive-video" controls>
              <source src="<?=$modalProductInfo["video"]?>" type="video/mp4">
          </video>
            <p>A bunch of text</p>
          </div>
          <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
          </div>
        </div>
        

    <?php endfor;?>
  </div>

  
</section>












