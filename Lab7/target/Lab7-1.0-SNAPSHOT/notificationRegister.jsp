<%-- 
    Document   : notificationRegister
    Created on : 31 May 2024, 11:33:07 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-3">
            <c:if test="${addSuccess}" >
                <<h2 class="text-center">Student Registration Successful!</h2>
            </c:if>
            <c:if test="${!addSuccess}" >
                <h2 class="text-center">Student Registration Unsuccessful!</h2>
            </c:if>
        </div>
    </body>
</html>
