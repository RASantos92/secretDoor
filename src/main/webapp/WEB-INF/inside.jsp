<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Inside</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="jumbotron text-center">        
		    <h1>Congratulations Your Inside</h1>
		    <br>
		    <h1>You can now Git Clone This Mad gold</h1>
		    <a class="col bg-warning text-light" href="https://github.com/RASantos92/secretDoor.git">https://github.com/RASantos92/secretDoor.git</a>
        </div>
        <form action="/home" method="get">
                    <div class="form-group text-center">
                    <input type="submit" value="home" class="btn btn-info btn-block" />
                    </div>
                </form>
    </div>
</body>
</html>