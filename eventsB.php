<?php
    $FullName = $_POST['FullName'];
    $Hotel = $_POST['Hotel'];
    $Hall = $_POST['Hall'];
    $Date = $_POST['Date'];
    $Package = $_POST['Package'];
    $Email = $_POST['Email'];
    $MobileNo = $_POST['MobileNo'];
    $Note = $_POST['Note'];

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
        $stmt = $conn->prepare("insert into events_reservation(FullName, Hotel, Hall, Date, Package, Email, MobileNo, Note)
            values(?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param('ssssssss', $FullName, $Hotel, $Hall, $Date, $Package, $Email, $MobileNo, $Note);
        $stmt->execute();
        echo "Reservation accepted! Thank you for choosing Tasik Hotels.";
        $stmt->close();
        $conn->close();
    }
?>