<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tasty Foods | Products</title>
    <link href='style.css' rel='stylesheet' type='text/css'>

</head>

<body>
    <div class="contentbox">
        <table class="tbl">
            <tr>
                <td>Product</td>
                <td>Description</td>
                <td>Price</td>
            </tr>
            <?php
            include "mysqli.php";

            $query = "SELECT * from `product`";

            $result = $mysqli->query($query);

            /* fetch associative array */
            while ($row = $result->fetch_assoc()) {
                printf("<tr><td>%s</td><td>%s</td><td>Rs. %s</td></tr>", $row["name"], $row["description"], $row["price"]);
            }

            ?>
        </table>
    </div>
</body>

</html>