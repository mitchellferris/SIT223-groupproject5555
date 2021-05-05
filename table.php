<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        window.onload = function() {
            let user = document.getElementById('user')
            let admin = sessionStorage.getItem('user')
            if (admin) {
                user.innerHTML = admin
            } else {
                user.innerHTML = "<a href='http://localhost/index.php'>login error</a>"
            }
        }
    </script>
</head>

<body>
    <div>
        <strong>user:<span id="user"></span></strong>
    </div>
    <form action="http://localhost/table.php" method="get">
        <div style="display: inline-block;">
            <select name="brand">
                <option value="">select cars</option>
                <option value="BWM">BWM</option>
                <option value="Audi">Audi</option>
            </select>
        </div>
        <div style="display: inline-block;">
            <select name="model">
                <option value="">select cars</option>
                <option value="Coupe">Coupe</option>
                <option value="Suv">Suv</option>
            </select>
        </div>
        <div style="display: inline-block;">
            <button type="submit">submit</button>
        </div>
    </form>
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>ID</td>
            <td>USER</td>
            <td>vehicle-brand</td>
            <td>vehicle-model</td>
            <td>issue</td>
            <td>recall</td>
        </tr>
        <?php
        $servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $database = "checkcar";
        // create connect
        $conn = mysqli_connect($servername, $username, $password, $database);
        mysqli_query($conn, "set names utf8");
        // test connect
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        echo "connect success";
        if (!empty($_GET['brand'])) {
            $brand = $_GET['brand'];
            if (!empty($_GET['model'])) {
                $model = $_GET['model'];
                $sql = "SELECT * FROM checkyourcar where vehicle_brand='${brand}' and vehicle_model='${model}'  ";
                $result = $conn->query($sql);
                print($sql.'123');
                if ($result->num_rows > 0) {
                    // print date
                    while ($row = $result->fetch_assoc()) {
                        // echo "id: " . $row["id"] . 
                        // " - Name: " . $row["vehicle-brand"] 
                        // . " " . $row["vehicle-model"] 
                        // .$row["issue"].$row["recall"]. "<br>";
                        echo "<tr>
                            <td>{$row['id']}</td>
                            <td>{$row['user']}</td/>
                            <td>{$row['vehicle_brand']}</td>
                            <td>{$row['vehicle_model']}</td>
                            <td>{$row['issue']}</td>
                            <td>{$row['recall']}</td?
                        </tr>";
                    }
                } else {
                    echo "0 result";
                }
                $conn->close();
            }
        } else {
            $sql = "SELECT * FROM checkyourcar";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                // print date
                while ($row = $result->fetch_assoc()) {
                    // echo "id: " . $row["id"] . 
                    // " - Name: " . $row["vehicle-brand"] 
                    // . " " . $row["vehicle-model"] 
                    // .$row["issue"].$row["recall"]. "<br>";
                    echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['user']}</td/>
                    <td>{$row['vehicle-brand']}</td>
                    <td>{$row['vehicle-model']}</td>
                    <td>{$row['issue']}</td>
                    <td>{$row['recall']}</td?
                </tr>";
                }
            } else {
                echo "0 result";
            }
            $conn->close();
        }


        ?>

    </table>

</body>

</html>