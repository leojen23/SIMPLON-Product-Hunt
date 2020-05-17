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



// $request = $db->query("SELECT product_id FROM votes ");
// $yo = $request->fetchAll();
// echo '<pre>' . var_export($yo, true) . '</pre>';
// var_dump($yo);







    // Retrieves the number of votes

    // ('SELECT user_id FROM votes WHERE product_id = ?');

    // $getVoteCount = $db->prepare("SELECT COUNT(*) FROM votes WHERE product_id = ?");
    // $getVoteCount->execute([$productId]);
    // $voteCount = $getVoteCount->fetch();
    // $voteCount = intval(implode($voteCount));
    // print_r($voteCount);


    // Retrieves all the votes
   
    
    // print_r($voteCount);






//     $getPopularProductsStatement = $db->query('SELECT 
// //                                         (SELECT COUNT(*) FROM votes,
// //                                         (SELECT products.id, products.name, products.s_description AS description, products.logo, products.video, categories.name AS category
// //                                         FROM products
// //                                         INNER JOIN categories
// //                                         ON products.category_id = categories.id ORDER BY vote_count DESC LIMIT 0,4');


                                        


// $test = $getPopularProductsStatement->fetchAll();














// // retrieve product ID
// if(!empty($_GET["productId"])){

//     $productId = intval($_GET["productId"]);
//     // echo $_SESSION["username"];
// }
//     // retrieve product individual vote count
//     $getVoteCountStatement = $db->prepare("SELECT vote_count FROM products WHERE id = ?");
//     $getVoteCountStatement->execute([$productId]);

//     $voteCount = $getVoteCountStatement->fetch();

//     // convert array into INT
//     $voteCountInt = intval(implode($voteCount));
//     $newVoteCount = $voteCountInt + 1 ;


//     // increment the number of vote by one
//     $updateVoteStatement = $db->prepare("UPDATE products SET vote_count = ?  WHERE id= ?");
//     $updateVoteStatement->execute([$newVoteCount,$productId]);


//     // echo '<pre>' . var_export($updateVoteStatement, true) . '</pre>';


//     // header("Location: ../index.php");