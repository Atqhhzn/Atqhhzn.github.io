<?php
    $Address = $_POST['Address'];
    $FullName = $_POST['FullName'];
    $Hotel = $_POST['Hotel'];
    $CheckIn = $_POST['CheckIn'];
    $CheckOut = $_POST['CheckOut'];
    $NoOfRooms = $_POST['NoOfRooms'];
    $Adults = $_POST['Adults'];
    $Children = $_POST['Children'];
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
        $stmt = $conn->prepare("insert into room_reservation(Address, FullName, Hotel, CheckIn, CheckOut, NoOfRooms, Adults, Children, Email, MobileNo)
            values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param('sssssiiiss', $Address, $FullName, $Hotel, $CheckIn, $CheckOut, $NoOfRooms, $Adults, $Children, $Email, $MobileNo);
        $stmt->execute();
        echo "Reservation accepted! Thank you for choosing Tasik Hotels.";
        $stmt->close();
        $conn->close();
    }
?>