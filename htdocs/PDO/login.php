<?php
session_start();

require 'connection.php';

// echo '<pre>' . var_export($data, true) . '</pre>';

if(!empty($_POST['username'])){
    // print_r ($_POST['username']);
          
    $username = htmlspecialchars($_POST['username']);
    $_SESSION["username"] = $username;
    date_default_timezone_set('Europe/Paris');
    $created_at = date('Y-m-d H:i:s');

    //je vérifie que l'utilisateur existe déjà
    $userStatement = $db->prepare("SELECT * FROM users WHERE username = ?");
    $userStatement ->execute([$_POST["username"]]);
    $user = $userStatement->fetch(PDO::FETCH_ASSOC);

    if(!$user){
    
    //J'insère le nouveau user dans la base de donnée
    $insertusersStatement = $db->prepare("INSERT INTO users(username, created_at) VALUES(?,?)");
    $insertusersStatement->execute([$username, $created_at]); 
       
    // I go back to the landing page
    header("Location: ../index.php");

    }else{
    
    // I got back to the landing page
        header("Location: ../index.php");
    }

}


    

    