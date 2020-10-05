<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>The Code</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="jumbotron text-center">        
		    <h1>The Code</h1>
		    <form action="/door/access" method="post">
                    <div class="form-group text-center">
                        <label>Secret code :</label>
                        <input type="text" name="code" class="form-control" />
                    </div>
                    <input type="submit" value="enter guess" class="btn btn-info btn-block" />
                </form>
                <div class="col-8 card mx-auto bg-danger text-white m-2">
                	<h1 class="text-center ">Your Super Wrong Guess'es</h1>
                	<c:forEach items="${guess}" var="guess" varStatus="loop">
		                <div class="col text-center text-light"><h1>${loop.index +1} : ${guess}</h1></div>
		            </c:forEach>
                </div>
        </div>
        
        
    </div>
</body>
</html>