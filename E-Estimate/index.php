<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "connect.php"; ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="log-process.php" method="post">
       Username:<input type="text" name="username" id=""><br>
       Password: <input type="password" name="password" id="">
       <br>
       <input type="submit" value="Login" name="login">
    </form>
</body>

</html>