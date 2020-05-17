<?php

include "connection.php";



//     // SENDING VOTES----------------------------------------------------------------------------------------

if(!empty($_GET["productId"])){

    // retrieves product ID 
    $productId = intval($_GET["productId"]);


    // retrieves and convert into INT user ID 
    $username = $_SESSION["username"] ;
    $getUserIdStatement = $db->prepare("SELECT id FROM users WHERE username = ?");
    $getUserIdStatement->execute([$username]);
    $userId = $getUserIdStatement->fetch();
    $userId = intval(implode($userId));
    
    
    // insert into votes table
    $insertVotesStatement = $db->prepare("INSERT INTO votes (user_id, product_id) VALUES (?,?)");
    $insertVotesStatement->execute([$userId, $productId]);

    header("location: ../index.php");

}

