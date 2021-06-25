<?php

  //set connection variables 
  $db_host = 'localhost';
  $db_user = 'root';
  $db_password = '';
  $db_db = 'motors_database';

  //connection to server & database 
  $connection = mysqli_connect($db_host, $db_user, $db_password, $db_db );

  //check connection 
  if(mysqli_connect_errno()):
    printf("Connect failed: %s\n", mysqli_connect_errno());
    exit();
  endif;
  

$m1 = $_POST['m1'];
$m2 = $_POST['m2'];
$m3 = $_POST['m3'];
$m4 = $_POST['m4'];
$m5 = $_POST['m5'];
$m6 = $_POST['m6'];


if(isset($_POST['save'])){
    echo "<br>";
    $my_query = "";
    $my_query = "select * from motors_values WHERE 1 ";
    $result = mysqli_query($connection, $my_query);
    $my_query = "INSERT INTO motors_values (motor1, motor2, motor3, motor4, motor5, motor6) VALUES ('$m1', '$m2', '$m3', '$m4', '$m5', $m6)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo "Item successfuly Added!";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }

}else if(isset($_POST['on'])) {
    echo "<br>";

    $my_query = "";

    $my_query = "select * from on_button WHERE 1 ";
    $result = mysqli_query($connection, $my_query);

    $my_query = "INSERT INTO on_button (IsOn) VALUES (1)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo "Item successfuly Added!";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }

}else if(isset($_POST['off'])) {
    echo "<br>";

    $my_query = "";

    $my_query = "select * from off_button WHERE 1 ";
    $result = mysqli_query($connection, $my_query);

    $my_query = "INSERT INTO off_button (IsOff) VALUES (0)";
    $result = mysqli_query($connection, $my_query);
    if($result)
    {
        echo "Item successfuly Added!";
    }
    else{
        echo "ERROR: Unable to past <br>";
    }
}
header("Location: FetchData.php");
             exit();
?>