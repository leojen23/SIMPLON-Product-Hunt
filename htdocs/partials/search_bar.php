<?php
// echo '<pre>' . var_export($data, true) . '</pre>';
$search = $db->query('SELECT products.name, products.s_description AS description, products.logo, products.vote_count, categories.name AS category 
FROM products
INNER JOIN categories
ON products.category_id = categories.id');

$products = $search->fetchAll();

?>

<section class="search_bar">
<div class="row">
<div id="popular" class="col s12 m10 offset-m1 l6 offset-l3 popular-list">

      <form action="" method="GET">
        <div class="input-field">
          <input id="search" name="search" type="search" placeholder="Search by description or name" required>
          <label class="label-icon" for="search"><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
          <button type="submit" name="submit" class="waves-effect waves-light btn-large">Search</button> 
        </div>
      </form>
      <?php 

if(isset($_GET['submit']) && $valid){
        if(count($products)==0){
            echo("Aucun résultat trouvé!");
        }
        foreach($products as $product){?>
  
         <ul class="collection z-depth-1 hoverable">
                        <li class="collection-item avatar">
                            <img src="<?= $product["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $product["name"]?></span>
                            <p><?= $product["description"]?> <br>
                            <small><?= $product["category"]?></small></p>
                        </li>
                 </ul>
      <?php  }

}  ?> 

  </div>              
    
  </div>        


</section>