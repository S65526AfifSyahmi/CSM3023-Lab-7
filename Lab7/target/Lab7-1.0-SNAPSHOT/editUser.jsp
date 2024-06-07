<%-- 
    Document   : editUser
    Created on : 30 May 2024, 2:39:48 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-3">
            <h2>Updating User Profile</h2>

            <form name="formEditUser" action="UserServlet" method="post" class="mt-3">
                <div class="form-group">
                    <label for="userID">User ID:</label>
                    <input type="text" class="form-control" name="userID" id="userID" size="25" value="<c:out value="${user.userID}" />" readonly>
                </div>
                <div class="form-group">
                    <label for="firstname">First Name:</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" size="40" value="<c:out value="${user.firstname}" />">
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name:</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" size="40" value="<c:out value="${user.lastname}" />">
                </div>
                <div class="form-group">
                    <input type="hidden" name="action" value="edit">
                </div>
                <div class="d-flex justify-content-end">
                    <button type="submit" class="btn btn-dark">Submit</button>
                </div>
            </form>
        </div>
    </body>
</html>
