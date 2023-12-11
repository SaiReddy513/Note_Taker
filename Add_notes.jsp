<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
 <%@ include file="All_js_css.jsp"%>
 <%@include file="index.jsp" %>s
 
</head>
<body>
<h1>Enter Your Note Detail</h1>
<form action="savenote" method="post">
  <div class="form-group">
    <label>Enter Title</label>
    <input type="text" 
    name="title"
    class="form-control" 
    id="n1" 
    placeholder="Enter Title">
  </div>
  <div class="form-group">
				<label for="content">Note Content</label>
				<textarea 
				name="content"
				required 
				id="content"
				placeholder="Enter your content here"				 
				class="form-control" 
				style="height: 300px;"	>	
				</textarea>
  </div>
  
  	<div class="container text-center">

				<button type="submit" class="btn btn-primary">Add</button>
			</div>
</form>
</body>
</html>