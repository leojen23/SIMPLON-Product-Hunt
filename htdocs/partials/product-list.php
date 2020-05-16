
<section class="product-list  ">
    
    <!-- TAB ELEMENT -->

    <div class="row">
        <div class="col s12 m4 offset-m1 l4 offset-l2">
            <h2 class=" left-align brown-text lighten-2" >Today</h2>
            <ul class="tabs">
                <li class="tab col s3 m5 l5"><a href="#popular" class="active">Popular</a></li>
                <li class="tab col s3 m5 l5"><a href="#newest">Newest</a></li>
            </ul>
        </div>
    </div>
    
    <!-- POPULAR PRODUCT LIST -->

    <div class="row">

        <div id="popular" class="col s12 m10 offset-m1 l8 offset-l2 popular-list">

            <?php for ($i=0; $i < 10 ; $i++):?>
            
                <ul class="collection z-depth-1 hoverable">
                    <a href="#modal1" class="modal-trigger">
                        <li class="collection-item avatar">
                            <img src="<?= $products[$i]["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $products[$i]["name"]?></span>
                            <p><?= $products[$i]["description"]?> <br>
                            <small><?= $products[$i]["category_name"]?></small></p>
                            <a href="../PDO/votes.php?productId=<?=$products[$i]["id"]?>" class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                                <i class="material-icons left">keyboard_arrow_up</i><?=$products[$i]["vote_count"]?>
                            </a>  
                        </li>
                    </a>
                </ul>

            <?php endfor;?>

        </div>   

    <!-- NEWEST PRODUCT LIST -->

        <div id="newest" class="col s12 m10 offset-m1 l6 offset-l3 newest-list">

             <?php for ($i=0; $i < 10 ; $i++):?>
            
                <ul class="collection z-depth-1 hoverable">
                    <a href="#modal1" class="modal-trigger">
                        <li class="collection-item avatar">
                            <img src="<?= $newProducts[$i]["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $newProducts[$i]["name"]?></span>
                            <p><?= $newProducts[$i]["description"]?> <br>
                            <small><?= $newProducts[$i]["category_name"]?></small></p>
                            <a href="../PDO/votes.php?productId=<?=$newProducts["id"]?>" class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                                <i class="material-icons left">keyboard_arrow_up</i><?= $newProducts[$i]["vote_count"]?>
                            </a> 
                        </li>
                    </a>
                </ul>

            <?php endfor;?>

        </div>

    </div>
    
</section>