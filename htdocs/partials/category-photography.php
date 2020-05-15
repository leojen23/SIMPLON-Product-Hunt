<?php
include '../PDO/connection.php';

// echo '<pre>' . var_export($data, true) . '</pre>';

$getCategoryProductsStatement = $db->query('SELECT products.name, products.s_description AS description, products.logo, products.vote_count, categories.name AS category 
FROM products
INNER JOIN categories
ON products.category_id = categories.id WHERE categories.id=3');

$categoryProducts = $getCategoryProductsStatement->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>

<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<!-- CUSTOM CSS -->
<link rel="stylesheet" href="../CSS/style.css">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
</head>
<body>

<header>


   <nav>
        <div class="nav-wrapper brown darken-2">
        <img src="../images/logo2.png" width="55px" class="brand-logo">  </>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons" class="hamburger-icon">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li class="active #00796b teal darken-2"><a href='../index.php'>Home</a></li>
            <li><a href="category-mac.php">Mac</a></li>
            <li><a href="category-games.php">Games</a></li>
            <li><a href="category-books.php">Books</a></li>
            <li><a href="category-webapp.php">Webapp</a></li>

        </ul>
        </div>
    </nav>
          
    <ul class="sidenav" class="hamburger">
            <li><a href='../index.php'>Home</a></li>
            <li><a href="category-mac.php">Mac</a></li>
            <li><a href="category-games.php">Games</a></li>
            <li><a href="category-books.php">Books</a></li>
            <li><a href="category-webapp.php">Webapp</a></li>
  </ul>

 
  

<section class="banner-category-photography">
    <div class="row">
        <div class="col s12 l12">

            <h1 class="apptitle">Photography</h1>

        </div>
    </div>       
</section>


</header>

<section class="category">
<div class="row">
      
        <div id="category" class="col s12 m10 offset-m1 l6 offset-l3 category-list">
            <h2>Photography applications</h2>

            <?php foreach($categoryProducts as $categoryProduct): ?>
                <ul class="collection z-depth-1 hoverable">
                        <li class="collection-item avatar">
                            <img src="<?= $categoryProduct["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $categoryProduct["name"]?></span>
                            <p><?= $categoryProduct["description"]?> <br>
                            <small><?= $categoryProduct["category"]?></small></p>
                        </li>
                 </ul>
            <?php endforeach;?>

        </div>

            </section>

<footer>

<?php include 'footer.php';?>

</footer>


</body>
    
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="../JS/script.js"></script>
        
</html>