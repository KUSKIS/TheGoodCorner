<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.tgc.modele.Notice" %>
<%@ page import="com.tgc.modele.User" %>
<%@ page import="com.tgc.dao.NoticeDAO" %>
<%@ page import="com.tgc.dao.UserDAO" %>
<%@ page import="com.tgc.dao.TgcConnection" %>
<!DOCTYPE html>
	<html>
	
		<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.14.0/css/mdb.min.css" rel="stylesheet">
		<title>To register</title>
		</head>
		
		<body>
		
		<%  if ( request.getAttribute("msg") != null) {%>
			<h4>${msg}</h4>
		<% } %>
			 <div class="container my-5 py-5 z-depth-1">
			    <section class="px-md-5 mx-md-5 text-center text-lg-left dark-grey-text">
			      <div class="row d-flex justify-content-center">
			        <div class="col-md-6">
			          <form class="text-center" action="#!" method="post">
			            <p class="h4 mb-4">To register</p>
			            <p>${error}</p>
			            	<label for='txtLogin'>Login :</label>
							<input name='txtLogin' type='text' value='${login}'/><br/>
							<span class="validity"></span>
							<label for='txtEmail'>Email :</label>
							<input name='txtEmail' type='email' value='${email}'/><br/>
							<span class="validity"></span>
							<label for='txtPassword'>Password :</label>
							<input name='txtPassword' type='password' value='${password}'/><br/>
							<span class="validity"></span>
							<label for='txtlocalisation'>Localisation :</label>
							<input name='txtLocalisation' type='text' value='${localisation}'/><br/>
							<span class="validity"></span>	
			            <div class="d-flex justify-content-around">  
			            <input class="btn btn-info btn-block my-4" type="submit"/>
			          </form>
			        </div>
			      </div>
			    </section>
			  </div>
			  
		</body>
		
	</html>