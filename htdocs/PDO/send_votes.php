<?php
// session_start();

include 'connection.php';

//retrieves user ID

$username = $_SESSION["username"] ;
$getUserIdStatement = $db->query("SELECT id FROM users WHERE username = $username");
$UserId = $getUserIdStatement->fetch();



// retrieve product ID
if(!empty($_GET["productId"])){

    $productId = intval($_GET["productId"]);
    // echo $_SESSION["username"];
}
    // retrieve product individual vote count
    $getVoteCountStatement = $db->prepare("SELECT vote_count FROM products WHERE id = ?");
    $getVoteCountStatement->execute([$productId]);

    $voteCount = $getVoteCountStatement->fetch();

    // convert array into INT
    $voteCountInt = intval(implode($voteCount));
    $newVoteCount = $voteCountInt + 1 ;


    // increment the number of vote by one
    $updateVoteStatement = $db->prepare("UPDATE products SET vote_count = ?  WHERE id= ?");
    $updateVoteStatement->execute([$newVoteCount,$productId]);


    // echo '<pre>' . var_export($updateVoteStatement, true) . '</pre>';


    header("Location: ../index.php");