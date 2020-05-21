
<!-- MODAL CONTENT -->

<div id="<?=$products[$i]["id"]?>" class="modal">

    <div class="modal-content">

        <!-- Products-list item -->
        <ul class="collection z-depth-1">
            <li class="collection-item avatar">
                <img src="<?=$modalProductInfo["logo"]?>" alt="" class="circle">
                <span class="title"><?=$modalProductInfo["name"]?></span>
                <p><?=$modalProductInfo["s_description"]?> <br>
                <small><?=$modalProductInfo["category_name"]?></small></p>

                <!-- upvote button -->
                <a href="./PDO/votes.php?productId=<?=$products[$i]["id"]?>" class=" waves-effect btn upvote-btn card-button" type="submit">
                    <i class="material-icons left">keyboard_arrow_up</i><?=$products[$i]["vote_count"]?>
                </a>
            </li>
        </ul>

        <!-- Video content -->
        <video class="responsive-video" width="600" controls>
            <source src="<?=$modalProductInfo["video"]?>" type="video/mp4">
        </video>

        <!-- product detailed description -->
        <p><?=$modalProductInfo["l_description"]?></p>
    </div>


    <div class="modal-footer">
        <a href="#!" class="modal-close waves-effect waves-green btn-flat">Leave</a>
    </div>

</div>

