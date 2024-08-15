<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>    

    <jsp:include page="header.jsp"></jsp:include>


        <div class="container">
        <h2>Welcome <strong>${employee.name}</strong>, Here is all of your information</h2>
        <table class="user-table">
            <thead>
                <tr>
                    <th>Employee Name</th>
                    <th>Email</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${employee}">
                    <tr>
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
        </table>
<br>
    <div class="button">
        <a href="/showAll">Show All Employees Information</a><br>
        <a href="/logout">Logout</a>
    </div>
    </div>
    
    
</body>
</html>
