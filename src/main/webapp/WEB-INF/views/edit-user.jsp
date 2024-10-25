<%@ page import="org.example.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Edit User</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Edit User</h2>
    <% User user = (User) request.getAttribute("user"); %>
    <form action="<%= request.getContextPath() %>/users/update" method="post">
        <input type="hidden" name="id" value="<%= user.getId() %>">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="<%= user.getFirstName() %>" required>
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="<%= user.getLastName() %>" required>
        </div>
        <div class="mb-3">
            <label for="identificationDocument" class="form-label">ID Document</label>
            <input type="text" class="form-control" id="identificationDocument" name="identificationDocument" value="<%= user.getIdentificationDocument() %>" required>
        </div>
        <div class="mb-3">
            <label for="nationality" class="form-label">Nationality</label>
            <input type="text" class="form-control" id="nationality" name="nationality" value="<%= user.getNationality() %>" required>
        </div>
        <div class="mb-3">
            <label for="registrationDate" class="form-label">Registration Date</label>
            <input type="date" class="form-control" id="registrationDate" name="registrationDate" value="<%= user.getRegistrationDate() %>" required>
        </div>
        <div class="mb-3">
            <label for="expirationDate" class="form-label">Expiration Date</label>
            <input type="date" class="form-control" id="expirationDate" name="expirationDate" value="<%= user.getExpirationDate() %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Save Changes</button>
        <a href="<%= request.getContextPath() %>/users" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>