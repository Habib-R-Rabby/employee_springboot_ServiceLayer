<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
</head>
<body>
    <h1>Edit Employee</h1>
    <form action="/admin/update/${employee.id}" method="post">
        <label>Name:</label>
        <input type="text" name="name" value="${employee.name}"/><br/>
        <label>Email:</label>
        <input type="email" name="email" value="${employee.email}"/><br/>
        <label>Salary:</label>
        <input type="number" name="salary" value="${employee.salary}"/><br/>
        <button type="submit">Update</button>
    </form>
</body>
</html>
