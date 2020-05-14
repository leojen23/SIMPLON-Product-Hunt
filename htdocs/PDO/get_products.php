<?php
include 'connection.php';

// retrieves TOP 4 popular products infos for CARDS

$getPopularProductsStatement = $db->query('SELECT products.id, products.name, products.s_description AS description, products.logo, products.video,products.vote_count, categories.name AS category
FROM products
INNER JOIN categories
ON products.category_id = categories.id ORDER BY vote_count DESC LIMIT 0,4');
$top4PopularProducts = $getPopularProductsStatement->fetchAll();


// echo '<pre>' . var_export($top4PopularProducts, true) . '</pre>';


// retrieves all popular products infos for the popular list on landing page

$getPopularProductsStatement = $db->query('SELECT products.name, products.s_description AS description, products.logo, products.vote_count, categories.name AS category 
FROM products
INNER JOIN categories
ON products.category_id = categories.id ORDER BY vote_count DESC LIMIT 0,11');

// List of popular products
$popularProducts = $getPopularProductsStatement->fetchAll();

// echo '<pre>' . var_export($popularProducts, true) . '</pre>';





// retrieves all popular products infos for the popular list on landing page

$getNewestProductsStatement = $db->query('SELECT products.name, products.s_description AS description, products.logo, products.vote_count, categories.name AS category
FROM products
INNER JOIN categories
ON products.category_id = categories.id ORDER BY created_at DESC LIMIT 0,11');


// List of newest products
$newestProducts = $getNewestProductsStatement->fetchAll();

// echo '<pre>' . var_export($newestProducts, true) . '</pre>';