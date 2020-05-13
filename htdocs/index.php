<?php
include './PDO/connection.php';


// echo '<pre>' . var_export($data, true) . '</pre>';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product-Hunt</title>

    <!-- Materialize CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- MATERIALIZE ICONS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./CSS/style.css">

</head>

<body>
  <!-- header and nav section start -->
 
  <!-- header and nav section end -->

  <!-- Most popular products section start-->

<?php include './partials/cards.php' ?>
  


<!-- products list section starts-->


<?php include './partials/product-list.php' ?>

 
<!-- products list section ends-->



<!-- Footer starts here -->
   
  <?php include './partials/footer.php' ?>

<!-- footer ends here -->



  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- MATERIALIZE Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

  <script src="../JS/script.js"></script>

</body>

</html>
