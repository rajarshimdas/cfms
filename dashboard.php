<?php
$month = isset($_GET["m"]) ? $_GET['m'] : '2024-04';

include "mysqli.php";

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard</title>

    <link href='style.css' rel='stylesheet' type='text/css'>

</head>

<body>

    <div class="contentbox">

        <h1>Tasty Foods Pvt Ltd</h1>
        <h3>CFMS | Monthly Report</h3>

        <form action="dashboard.php" method="GET">
            <input type="month" value="<?= $month ?>" name="m" max="2024-05">
            <input type="submit" value="Get">
        </form>

        <h4></h4>

        <table class="tbl">
            <tr>
                <td style="width: 50%;">Products</td>
                <td>Price</td>
                <td>Sales</td>
                <td>Amount</td>
            </tr>
            <?php
            $total_sales = 0;
            $query = "SELECT * from `vw_monthly_sale` where `m` ='" . $month . "-01'";

            $result = $mysqli->query($query);

            /* fetch associative array */
            while ($row = $result->fetch_assoc()) {
                printf(
                    "<tr><td>%s</td><td>%s</td><td>%s</td><td>Rs. %s</td></tr>",
                    $row["name"],
                    $row["price"],
                    $row["sales"],
                    $row["amount"]
                );

                $total_sales += $row["amount"];
            }

            ?>
            <tr>
                <td colspan="3">Total Income</td>
                <td><?= 'Rs. ' . $total_sales ?></td>
            </tr>
        </table>

        <h4></h4>

        <table class="tbl">
            <tr>
                <td style="width: 50%;">Expenses</td>
                <td>Amount</td>
            </tr>
            <?php
            $total_expn = 0;
            $query = "SELECT * from `vw_monthly_expenses` where `month` ='" . $month . "-01'";
            $result = $mysqli->query($query);

            /* fetch associative array */
            while ($row = $result->fetch_assoc()) {
                printf(
                    "<tr><td>%s</td><td>Rs. %s</td></tr>",
                    $row["expense"],
                    $row["amount"]
                );

                $total_expn += $row["amount"];
            }

            ?>
            <tr>
                <td>Total Expenses</td>
                <td><?= "Rs. " . $total_expn ?></td>
            </tr>
        </table>


        <h4>Gross Outcome</h4>

        <table class="tbl">

            <tr>
                <td style="width: 50%;">Profit / Loss</td>
                <td>
                    <?= "Rs. " . ($total_sales - $total_expn) ?>
                </td>
            </tr>
        </table>

    </div>

</body>

</html>