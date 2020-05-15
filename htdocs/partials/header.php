<?php
// echo '<pre>' . var_export($data, true) . '</pre>';
$search = $db->query('SELECT products.name, products.s_description AS description, products.logo, products.vote_count, categories.name AS category 
FROM products
INNER JOIN categories
ON products.category_id = categories.id');

$products = $search->fetchAll();

?>
<header>
   <nav>
        <div class="nav-wrapper brown darken-2">
        <img src="./images/logo2.png" width="55px" class="brand-logo">  </>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
        <li><a href="./partials/category-photography.php"><i class="material-icons left">photo_camera</i>Photography</a></li>
            <li><a href="./partials/category-mac.php"><i class="material-icons left">desktop_mac</i>Mac</a></li>
            <li><a href="./partials/category-games.php"><i class="material-icons left">extension</i>Games</a></li>
            <li><a href="./partials/category-books.php"><i class="material-icons left">book</i>Books</a></li>
            <li><a href="./partials/category-webapp.php"><i class="material-icons left">public</i>Webapp</a></li>


        </ul>
        </div>
    </nav>
          
        <ul class="sidenav" class="hamburger">
            <li><a href="./partials/category-photography.php">Photography</a></li>
            <li><a href="./partials/category-mac.php">Mac</a></li>
            <li><a href="./partials/category-games.php">Games</a></li>
            <li><a href="./partials/category-books.php">Books</a></li>
            <li><a href="./partials/category-webapp.php">Webapp</a></li>
        </ul>

    
<section class="banner">
    <div class="row">
        <div class="col s12 l12">

            <h1>Product Hunt</h1>

            <div class="row">
              <div class="col s12 l12">


                  <?php    
                  if(!empty($_SESSION['username'])){

                  ?>
                      <span class="hello"> Bienvenue <?=$_SESSION['username'];?> </span>
                      <a href="/PDO/logout.php">disconnect</a>
                  <?php

                  }else{ echo('
                        <form action="../PDO/login.php" method="POST" class="form-content">
                            <div class="input-field col s6 l6"> 
                              <i class="material-icons prefix">account_circle </i>
                              <input type="text" name="username" class="validate" required>
                             <label for="last_name">Pseudo</label>
                              <span class="helper-text" data-error="wrong" data-success="right">Example: Sophie751</span>
                            </div>
                            <div class="col s7 l4"> 
                               <button type="submit" class="waves-effect waves-light btn-large">Sign up</button> 
                            </div>  
                             <input type="hidden" name="created_at"> 
                        </form>');
                       } 
                  ?>
              </div>
        </div>
    
    </section>

</header>

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
 
