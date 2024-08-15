<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>


<div class="container">
    <h2>Edit Employee</h2>
    <form action="saveEmployee" method="post" class="form">
        <input type="hidden" name="id" value="${employee.id}" />
        <input type="hidden" name="password" value="${employee.password}" />
        <div class="input-field">
        <p>Name: <input type="text" name="name" value="${employee.name}" /></p></div>
        <div class="input-field">
        <p>Email: <input type="text" name="email" value="${employee.email}" /></p></div>
        <div class="input-field">
        <p>Salary: <input type="text" name="salary" value="${employee.salary}" /></p></div>
        <div class="input-field">
        
        <button type="submit">Save</button>

    </form>
    </div>
</body>
</html>
