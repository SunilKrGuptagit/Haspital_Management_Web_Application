<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card{
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<div class="container p-5">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-5 text-center">User Login</p>
					<form action="doclogin" method="post">
					
						<div class="mb-3">
							<level class="form-level">Email Address</level>
							<input reqired name="email" type="email" class="form-control">
						</div>
						
						<div class="mb-3">
							<level class="form-level">Password</level>
							<input reqired name="password" type="password" class="form-control">
						</div>
						
						<button type="submit" class="btn bg-success text-white col-mid-12">Login</button>
					</form>
					<br> Don't have an account?<a href="signup.jsp" class="click">create one</a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>