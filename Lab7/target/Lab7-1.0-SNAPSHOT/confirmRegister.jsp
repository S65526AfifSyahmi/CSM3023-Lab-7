<%-- 
    Document   : confirmRegister
    Created on : 31 May 2024, 5:49:17 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Student Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.7.1.slim.min.js" integrity="sha256-kmHvs0B+OpCW5GVHUNjv9rOmY0IvSIRcf7zGUDTDQM8=" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container mt-3">
            <h2>Student Registration Confirmation</h2>
            
            <p>You want to register the following student:</p>
            <ul>
                <li>Student ID: <c:out value="${studID}" /></li>
                <li>Name: <c:out value="${studName}" /></li>
            </ul>

            <div class="d-flex justify-content-end">
                <form action="notificationRegister.jsp" method="post">
                    <input type="hidden" value="${studID}" name="studID">
                    <input type="hidden" value="${studName}" name="studName">
                    <button type="button" class="btn" id="btnCancel">Cancel</button>
                    <button type="submit" class="btn btn-dark">Proceed</button>
                </form>
            </div>
        </div>

        <script>
            $("#btnCancel").click(() => {
                window.location = "studentRegister.jsp"
            });
        </script>
    </body>
</html>