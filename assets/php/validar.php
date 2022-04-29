<?php

    include('db.php');

    $USER = $_POST['user'];
    $PASSWORD = $_POST['password'];

    $inquiry = "SELECT* FROM personal where user = '$USER' and password = '$PASSWORD'";
    $result = mysqli_query($conection, $inquiry);

    $rows = mysqli_num_rows($result);

    if ($rows) {

        header("location:../assets/pages/graphics.html");

    }else{

        include("../index.html");
        ?>

        <h3>error de datos</h3>

        <?php

    }

    mysqli_free_result($result);
    mysqli_close($conection);


?>