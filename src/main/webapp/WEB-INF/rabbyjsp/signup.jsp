<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>    

    <jsp:include page="header.jsp"></jsp:include>

    <div class="container">
        <h2>Sign Up</h2>
        <form action="/signup" method="post" class="form">
            <div class="input-field">
                <input type="text" name="name" required>
                <label>Username</label>
            </div>
            <div class="input-field">
                <input type="email" name="email" required>
                <label>Email</label>
            </div>
            <div class="input-field">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <div class="input-field">
                <input type="number" name="salary" required>
                <label>Salary</label>
            </div>
            <button type="submit">Sign Up</button>
            <div class="register-link">
                <p>Already have an account? <a href="login">Login here</a></p>
            </div>

            <c:if test="${not empty error}">
                <p style="color:red;">${error}</p>
            </c:if>
        </form>
    </div>
</body>
</html>
