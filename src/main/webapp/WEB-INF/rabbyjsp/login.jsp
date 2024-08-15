<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>


    <div class="container">
        <h2>Login</h2>
        <form action="/login" method="post" class="form">
            <div class="input-field">
                <input type="email" name="email" required>
                <label>Email</label>
            </div>
            <div class="input-field">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <button type="submit">Login</button>
            <div class="register-link">
                <p>Don't have an account? <a href="signup">Sign up here</a></p>
            </div>
            <!-- Display error message if any -->
            <c:if test="${not empty error}">
                <p class="error-message">${error}</p>
            </c:if>
        </form>
    </div>
</html>
