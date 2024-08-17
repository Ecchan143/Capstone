<?php
include "connect.php";

if (isset($_POST['login'])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashed_password = $row["password"];

        if (password_verify($password, $hashed_password)) {
            header('Location: entrance.php');
            exit();
        } else {
            header('Location: index.php');
            exit();
        }
    } else {
        header('Location: index.php');
        exit();
    }

    $stmt->close();
}

$conn->close();
?>
