<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/employee-list.css">
 
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="header">
                <h1 class="title">Employee Management</h1>
                <a href="/showNewEmployeeForm" class="btn btn-add">
                    + Add Employee
                </a>
            </div>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Department</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="employee" items="${listEmployees}">
                            <tr>
                                <td>#${employee.id}</td>
                                <td>
                                    <div style="font-weight: 500;">${employee.name}</div>
                                </td>
                                <td>${employee.email}</td>
                                <td>
                                    <span class="department-badge">${employee.department}</span>
                                </td>
                                <td>
                                    <div class="action-buttons">
                                        <a href="/showFormForUpdate/${employee.id}" class="btn btn-edit">Update</a>
                                        <a href="/deleteEmployee/${employee.id}" class="btn btn-delete">Delete</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>