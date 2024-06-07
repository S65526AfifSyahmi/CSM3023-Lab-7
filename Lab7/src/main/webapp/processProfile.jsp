<%-- 
    Document   : processProfile
    Created on : 30 May 2024, 7:18:02 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile Details</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>

        <div class="container mt-3">
            <p>User profile with username <c:out value="${profile.username}" /> has been registered successfully!</p>

            <p>User profile details are:</p>

            <table>
                <tr>
                    <td>Username:</td>
                    <td class="pl-3"><c:out value="${profile.username}" /></td>
                </tr>
                <tr>
                    <td>IC No:</td>
                    <td class="pl-3"><c:out value="${profile.icno}" /></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td class="pl-3"><c:out value="${profile.firstname}" /></td>
                </tr>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    </body>
</html>