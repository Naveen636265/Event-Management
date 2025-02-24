<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css"> <!-- link to custom CSS file -->
    <style type="text/css">
    .container1{
    opacity: 0;
     animation: topSideviji 1s ease forwards;
    animation-delay: 1s;
    }
      @keyframes topSideviji {
    0% {
        transform: translateY(-100px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
    </style>
</head>
<body>
    <%@include file="Header.jsp"%>
    <br>
    <br>
    <br>
    <!-- Thank You Message -->
    <div class="container1">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h2>Thank You!</h2>
                <p>Your submission has been received successfully.</p>
                <button class="btn btn-primary" >
                <a href="Home.jsp" class="btn btn-primary">Go Back to Home</a></button>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <footer>
<%@include file="Footer.jsp"%>
    
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
    