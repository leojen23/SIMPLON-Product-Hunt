<section class="product-list  ">
    

<!-- TAB ELEMENT -->

    <div class="row">
    
        <div class="col s12 m4 offset-m1 l3 offset-l3">
            <h2 class=" left-align brown-text lighten-2" >Today</h2>
            <ul class="tabs">
                <li class="tab col s3 m5 l5"><a href="#popular" class="active">Popular</a></li>
                <li class="tab col s3 m5 l5"><a href="#newest">Newest</a></li>
            </ul>
        </div>

    </div>

    
    <!-- POPULAR PRODUCT LIST -->

    
    <div class="row">

        
        <div id="popular" class="col s12 m10 offset-m1 l6 offset-l3 popular-list">

            <?php foreach($popularProducts as $popularProduct): ?>
                <ul class="collection z-depth-1 hoverable">
                    <a href="#modal1" class="modal-trigger">
                        <li class="collection-item avatar">
                            <img src="<?= $popularProduct["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $popularProduct["name"]?></span>
                            <p><?= $popularProduct["description"]?> <br>
                            <small><?= $popularProduct["category"]?></small></p>
                            <a class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                                <i class="material-icons left">keyboard_arrow_up</i><?= $popularProduct["vote_count"]?>
                            </a>  
                        </li>
                    </a>
                </ul>
            <?php endforeach;?>

        </div>


    <!-- NEWEST PRODUCT LIST -->

        <div id="newest" class="col s12 m10 offset-m1 l6 offset-l3 newest-list">

            <?php foreach($newestProducts as $newestProduct): ?>
                <ul class="collection z-depth-1 hoverable">
                    <a href="#modal1" class="modal-trigger">
                        <li class="collection-item avatar">
                            <img src="<?= $newestProduct["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $newestProduct["name"]?></span>
                            <p><?= $newestProduct["description"]?> <br>
                            <small><?= $newestProduct["category"]?></small></p>
                            <a class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                                <i class="material-icons left">keyboard_arrow_up</i><?= $newestProduct["vote_count"]?>
                            </a> 
                        </li>
                    </a>
                </ul>
            <?php endforeach;?>

        </div>
    </div>
    
</section>