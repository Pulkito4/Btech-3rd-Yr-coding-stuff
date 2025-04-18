<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>
    <h2>User Registration</h2>
    <form action="RegisterServlet" method="post">
        Name: <input type="text" name="name"><br><br>
        Email: <input type="text" name="email"><br><br>
        Address: <input type="text" name="address"><br><br>
        Mobile: <input type="text" name="mobile" required pattern="[0-9]{10}"
                   title="Enter a valid 10-digit mobile number"><br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>