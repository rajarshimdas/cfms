<?php
$name = $_POST['name'];
$des = $_POST['des'];
$price = $_POST['price'];

include "mysqli.php";


$query = "INSERT INTO `cfms`.`product` (`name`, `description`, `price`) VALUES ('$name', '$des', '$price')";

$mysqli->query($query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link href='style.css' rel='stylesheet' type='text/css'>

</head>

<body>
    <div class="contentbox">
    Added <?= $name ?>
    </div>
</body>
