<?php
    $FullName = $_POST['FullName'];
    $Restaurant = $_POST['Restaurant'];
    $Date = $_POST['Date'];
    $Time = $_POST['Time'];
    $Seats = $_POST['Seats'];
    $Email = $_POST['Email'];
    $MobileNo = $_POST['MobileNo'];

    //Database connection
    $serverName = "localhost";
    $username = "root";
    $password = "";
    $database = "tasik_hotels";

    $conn = new mysqli($serverName, $username, $password, $database);

    if ($conn->connect_error){
        die("Connection failed: " . $conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("insert into dining_reservation(FullName, Restaurant, Date, Time, Seats, Email, MobileNo)
            values(?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param('ssssiss', $FullName, $Restaurant, $Date, $Time, $Seats, $Email, $MobileNo);
        $stmt->execute();
        echo "Reservation accepted! Thank you for choosing Tasik Hotels.";
        $stmt->close();
        $conn->close();
    }
?>