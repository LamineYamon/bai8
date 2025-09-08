<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${sessionScope.user.email}</span><br>

    <label>First Name:</label>
    <span>${sessionScope.user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${sessionScope.user.lastName}</span><br>

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <!-- Display current date from request attribute -->
    <p>Current date: ${requestScope.currentDate}</p>

    <!-- Display the first two users from the ArrayList in session -->
    <p>First user: ${sessionScope.users[0].firstName} ${sessionScope.users[0].lastName}</p>
    <p>Second user: ${sessionScope.users[1].firstName} ${sessionScope.users[1].lastName}</p>

    <!-- Display customer service email from context-param -->
    <p>Customer Service Email: ${initParam.custServEmail}</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</body>
</html>
