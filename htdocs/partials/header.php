<?php



// echo '<pre>' . var_export($data, true) . '</pre>';
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
<link rel="stylesheet" href="./CSS/style.css">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;1,700&display=swap" rel="stylesheet">
</head>
<body>

<header>


   <nav>
        <div class="nav-wrapper brown darken-2">
        <img src="../images/logo2.png" width="65px" class="brand-logo">  </>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="#">Photography</a></li>
            <li><a href="#">Mac</a></li>
            <li><a href="#">Games</a></li>
            <li><a href="#">Books</a></li>
            <li><a href="#">Webapps</a></li>

        </ul>
        </div>
    </nav>
          
    <ul class="sidenav" class="hamburger">
            <li><a href="#">Photography</a></li>
            <li><a href="#">Mac</a></li>
            <li><a href="#">Games</a></li>
            <li><a href="#">Books</a></li>
            <li><a href="#">Webapps</a></li>
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
                <?php

                }else{ echo('
                        <form action="../PDO/login.php" method="POST" class="form-content">
                            <div class="input-field col s6 l6"> 
                        <i class="material-icons prefix">account_circle </i>
                        <input type="text" name="username" class="validate">
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

</body>
    
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="../JS/script.js"></script>
        
</html>