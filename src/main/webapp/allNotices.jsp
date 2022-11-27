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
		<title>Les annonces The Good Corner</title>
		</head>
		<body>
		
		
			<% for(Notice notice: NoticeDAO.getAllNotices()) { %>
	
				
			<div class="container mt-5">

			  <section class="">
			
			    <div class="row">
			
			      <div class="col-lg-5 col-md-12 mb-lg-0 mb-4">
			
			        <div class="view overlay rounded z-depth-1 mb-lg-0 mb-4">
			          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Others/images/52.jpg" alt="Sample image">
			          <a>
			            <div class="mask rgba-white-slight"></div>
			          </a>
			        </div>
			
			      </div>
			
			      <div class="col-lg-7 col-md-6 mb-md-0 mb-4 mt-xl-4">
			
			      	 <h3 class="font-weight-normal mb-4"><%= notice.getTitle() %></h3>
			         <p class="text-muted"><%= notice.getDescription() %></p>
			         <p><%= notice.getPrice() %></p><p>euros<p>
			         
			      </div>
			
			    </div>
			
			  </section>
			
			</div>
		<%
				}
				%>	
		</body>
	</html>