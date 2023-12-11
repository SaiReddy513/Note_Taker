<%@ page import ="org.hibernate.Session" %>
<%@page import="java.util.List"%>
<%@ page import ="com.helper.FactoryProvider" %>
<%@ page import="org.hibernate.Query"%>
<%@ page import="com.entities.Note" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: ALL NOTES</title>
</head>
<body>
  
  <div class="container">
  <%@ include file="index.jsp"%> 
  <br>
  <h2>ALL_NOTES</h2>
  <div class="row">
<div class="col12">
<%
Session s=FactoryProvider.getFactory().openSession();
Query q=s.createQuery("from Note");
List<Note>list=q.list();
for(Note n:list)
{
%>
<div class="card">
  <img class="card-img-top m-4 mx-auto" style="max-width:100px" src="image/notes.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%= n.getTitle()%></h5>
    <p class="card-text"><%=n.getContent() %></p>
    <div class="container text-center mt-2"></div>
    <a href="deleteservlet?note_id=<%= n.getId() %>" class="btn btn-primary">Delete</a>
    <a href="edit.jsp?note_id=<%= n.getId() %>" class="btn btn-primary">Update</a>
 
  </div>
</div>


<%
}
s.close();

%>

</div>
  </div>


  </div>
  

</body>
</html>