<?php
include 'connect.php';
try {

    $stmt1 = $conn->prepare("INSERT INTO tbl_userdetails (fullname, age, sex, location, contractnumber) VALUES (?, ?, ?, ?, ?)");
    $stmt1->bind_param("sissi", $fullname, $age, $sex, $location, $contractnumber);

    $fullname = $_POST['fullname'];
    $age = $_POST['age'];
    $sex = $_POST['sex'];
    $location = $_POST['location'];
    $contractnumber = $_POST['contractnumber'];
    $stmt1->execute();

    $userdetails_id = $stmt1->insert_id;

   
    $stmt2 = $conn->prepare("INSERT INTO tbl_users (username, password, userdetails_id) VALUES (?, ?, ?)");
    $stmt2->bind_param("ssi", $username, $hashed_password, $userdetails_id);

    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    $stmt2->execute();

   
    $conn->commit();

    echo "New record created successfully";
} catch (Exception $e) {
   
    $conn->rollback();
    echo "Error: " . $e->getMessage();
}

$stmt1->close();
$stmt2->close();
$conn->close();

