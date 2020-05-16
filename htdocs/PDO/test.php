<?php
include "connection.php";

// retrieves product information and vote counts

$getProductsStatement = $db->query("SELECT
    `products`.`id`,
    `name`,
    `l_description` AS `description`,
    `s_description`,
    `logo`,
    `video`,
    `category_id`,
    `created_at`,
    COUNT(`votes`.`product_id`) AS `vote_count`
    
FROM
    `products`
LEFT JOIN `votes`
ON `products`.`id` = `votes`.`product_id`
GROUP BY `products`.`id`
ORDER BY `vote_count` ");

$products = $getProductsStatement->fetchAll();
