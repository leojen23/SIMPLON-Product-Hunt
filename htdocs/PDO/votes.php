<?php

include "connection.php";

// SENDING VOTES----------------------------------------------------------------------------------------

if(!empty($_GET["productId"])){

    // retrieves product ID 
    $productId = intval($_GET["productId"]);


    // retrieves and convert into INT user ID 
    $username = $_SESSION["username"] ;
    $getUserIdStatement = $db->prepare("SELECT id FROM users WHERE username = ?");
    $getUserIdStatement->execute([$username]);
    $userId = $getUserIdStatement->fetchColumn();
    // $userId = intval(implode($userId));
    
    if($userId AND $productId){
        echo "what the hell are you doing";
        
    }else{
        $insertVotesStatement = $db->prepare("INSERT INTO votes (user_id, product_id) VALUES (?,?)");
        $insertVotesStatement->execute([$userId, $productId]);
    
        header("location: ../index.php");

    }
    // insert into votes table
  

}


