<?php


?>

<header>
   <nav>
        <div class="nav-wrapper brown darken-2">
        <img src="../images/logo2.png" width="65px" class="brand-logo">  </>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
        <li><a href="./partials/category-photography.php">Photography</a></li>
            <li><a href="./partials/category-mac.php">Mac</a></li>
            <li><a href="./partials/category-games.php">Games</a></li>
            <li><a href="./partials/category-books.php">Books</a></li>
            <li><a href="./partials/category-webapp.php">Webapp</a></li>


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

   
    <section class="banner banner-landing-page">
        <div class="row">
            <div class="col s12 l12">
                <h1>Product Hunt</h1>
                <div class="row">
                    <div class="col s12 l12">

                        <?php 
                            if(!empty($_SESSION['username'])){
                        ?>
                        
                        <div class="greeting-msg">
                            <span class="hello"> Bienvenue <?=$_SESSION['username'];?> </span>
                            <a href="/PDO/logout.php" type="submit" class="waves-effect waves-light btn-large">Log out</a> 
                        </div>   

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

