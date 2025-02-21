<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/add-employee.css">

    <title>Add Employee</title>
</head>
<body>
    <div class="container">
        <div class="form-header">
            <h1 class="title">Add Employee</h1>
        </div>
        <form action="/saveEmployee" method="post">
            <div class="form-group">
                <label class="form-label" for="name">Full Name</label>
                <input type="text" id="name" name="name" class="form-input" placeholder="Enter full name" required>
            </div>
            <div class="form-group">
                <label class="form-label" for="email">Email Address</label>
                <input type="email" id="email" name="email" class="form-input" placeholder="Enter email address" required>
            </div>
            <div class="form-group">
                <label class="form-label" for="department">Department</label>
                <input type="text" id="department" name="department" class="form-input" placeholder="Enter department" required>
            </div>
            <button type="submit" class="submit-btn">Save Employee</button>
        </form>
        <a href="/" class="back-link">← Back to Employee List</a>
    </div>
</body>
</html>