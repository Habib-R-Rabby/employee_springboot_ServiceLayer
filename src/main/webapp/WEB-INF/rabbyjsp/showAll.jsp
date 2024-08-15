<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Employees</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>


    <h2>Employee List</h2>
    <div class="container">
    <table class="user-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td>${employee.salary}</td>
                    <td>
                        <a href="editEmployee?id=${employee.id}">Edit</a> | 
                        <a href="deleteEmployee?id=${employee.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table><br>
    <div class="button">
        <a href="/profile">Go to Profile</a><br>
        <a href="/logout">Logout</a>
    </div>
    </div>    
    
    </body>
</html>
