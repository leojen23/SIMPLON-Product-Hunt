<?php

include 'connection.php';

if(!empty($COOKIE["username"])){

    $userStatement = $db->prepare("SELECT * FROM users WHERE username = ?");
    $userStatement ->execute([$_COOKIE["username"]]);
    $user = $userStatement->fetch(PDO::FETCH_ASSOC);
    print_r ($user);
    
}