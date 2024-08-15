<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>All Employees</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

 <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>Email</th>
        <th>Password</th>
        <th>Salary</th>
         <th>ACTION</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${listOfEmployeeEntity}" var="employeeEntity">
      <tr>
        <td>${employeeEntity.id}</td>
        <td>${employeeEntity.name}</td>
        <td>${employeeEntity.email}</td>
        <td>${employeeEntity.password}</td>
        <td>${employeeEntity.salary}</td>
            <td>
                <a href="@{/showAll{id}(id=${employee.id})}">Edit</a>
                <a href="@{/admin/delete/{id}(id=${employee.id})}">Delete</a>
            </td>      </tr>
      </c:forEach>
      
    </tbody>
  </table>





  
</div>

</body>
</html>