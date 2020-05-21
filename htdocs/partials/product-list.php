<section class="product-list">

    <div class="row">
        <div class="col s12 m4 offset-m1 l4 offset-l3">
        <ul class="tabs">
            <li class="tab col s3"><a href="#tab-popular" class="active">Popular</a></li>
            <li class="tab col s3"><a  href="#tab-newest">Newest</a></li>
        </ul>
    </div>

    <div class="row">

        <div id="tab-popular" class="col s12 m10 offset-m1 l6 offset-l3 popular-list">

            <?php for ($i=0; $i < 10 ; $i++):?>

            <!-- link to product infos request for modal -->
            <!-- <?php include "./PDO/Modal_infos.php";?> -->

            <!-- link to modal content -->
            <?php include "./partials/modal_content.php";?>

            <ul class="collection z-depth-1 hoverable">
                <a href="#<?=$products[$i]["id"]?>"  class="modal-trigger">
                    <li class="collection-item avatar">
                        <img src="<?= $products[$i]["logo"]?>" alt="" class="circle">
                        <span class="title"><?= $products[$i]["name"]?></span>
                        <p><?= $products[$i]["description"]?> <br>
                        <small><?= $products[$i]["category_name"]?></small></p>


                        <a onclick="upVote(<?=$products[$i]['id']?>)" class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                            <i class="material-icons left">keyboard_arrow_up</i><?=$products[$i]["vote_count"]?>
                        </a>  
                    </li>
                </a>
            </ul>

            <?php endfor;?>

        </div>


        <div id="tab-newest" class="col s12 m10 offset-m1 l6 offset-l3 newest-list">


            <?php for ($i=0; $i < 10 ; $i++):?>

                <!-- link to product infos request for modal -->
                <?php include "./PDO/Modal_infos.php";?>

                <!-- link to modal content -->
                <?php include "./partials/modal_content.php";?>

                <ul class="collection z-depth-1 hoverable">
                    <a href="#<?=$newProducts[$i]["id"]?>" class="modal-trigger">
                        <li class="collection-item avatar">
                            <img src="<?= $newProducts[$i]["logo"]?>" alt="" class="circle">
                            <span class="title"><?= $newProducts[$i]["name"]?></span>
                            <p><?= $newProducts[$i]["description"]?> <br>
                            <small><?= $newProducts[$i]["category_name"]?></small></p>
                            <a onclick="upVote(<?=$products[$i]['id']?>)" class=" secondary-content waves-effect #5d4037 brown darken-2 btn upvote-btn" type="submit">
                                <i class="material-icons left">keyboard_arrow_up</i><?= $newProducts[$i]["vote_count"]?>
                            </a> 
                        </li>
                    </a>
                </ul>

            <?php endfor;?>

        </div>
        
    </div>






    <!-- TAB ELEMENT -->

    <!-- <div class="row">
        <div class="col s12 m4 offset-m1 l4 offset-l3">
            <h2 class=" left-align brown-text lighten-2" >Today</h2>
            <ul class="tabs">
                <li class="tab col s3 m5 l5"><a href="#popular" class="active">Popular</a></li>
                <li class="tab col s3 m5 l5"><a href="#newest">Newest</a></li>
            </ul>
        </div>
    </div>
    
    

    <div class="row">

        <div id="popular" class="col s12 m10 offset-m1 l6 offset-l3 popular-list">

           <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque culpa error consequuntur minima voluptas. Ex maiores, accusamus molestias labore vitae quod molestiae in odit possimus minus libero, doloribus reiciendis tempore nesciunt neque fuga ipsam similique harum eos beatae obcaecati reprehenderit.</p>
         
        </div>   

   

        <div id="newest" class="col s12 m10 offset-m1 l6 offset-l3 newest-list">

            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ad nulla voluptate necessitatibus eius architecto recusandae aliquam nostrum, est praesentium odit?</p>

        </div>

    </div> -->

</section>
