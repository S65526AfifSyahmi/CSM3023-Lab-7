<%-- 
    Document   : studentRegister
    Created on : 31 May 2024, 5:13:52 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container mt-3">
            <h2>Student Registration</h2>
            
            <form action="StudentServlet" class="mt-3" method="get">
                <div class="form-group">
                    <label for="studID">Student ID<span class="text-danger">*</span></label>
                    <input type="text" id="studID" name="studID" class="form-control" placeholder="E.g. S12345" maxlength="6" pattern="^S[0-9]{5}$" required>
                </div>
                <div class="form-group">
                    <label for="studName">Name</label>
                    <input type="text" id="studName" name="studName" class="form-control" maxlength="50" placeholder="Enter name">
                </div>
                <div class="d-flex justify-content-end">
                    <button type="reset" class="btn">Clear</button>
                    <button type="submit" class="btn btn-dark">Submit</button>
                </div>
            </form>
        </div>
        
    </body>
</html>
