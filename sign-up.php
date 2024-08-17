<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
</head>
<body>
    <h2>Sign Up</h2>
    <form action="signup-process.php" method="post">
        <label for="fullname">Full Name:</label><br>
        <input type="text" id="fullname" name="fullname" required><br><br>

        <label for="age">Age:</label><br>
        <input type="number" id="age" name="age" required><br><br>

        <label for="sex">Sex:</label><br>
        <select id="sex" name="sex" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br><br>

        <label for="location">Location:</label><br>
        <input type="text" id="location" name="location" required><br><br>

        <label for="contractnumber">Contact Number:</label><br>
        <input type="number" id="contactnumber" name="contractnumber" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required><br><br>

        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Sign Up">
    </form>
</body>
</html>
