<?php
$name = $_POST['name'];
$des = $_POST['des'];
$price = $_POST['price'];

include "mysqli.php";


$query = "INSERT INTO `cfms`.`product` (`name`, `description`, `price`) VALUES ('$name', '$des', '$price')";

$mysqli->query($query);
?>
Added <?= $name ?>
