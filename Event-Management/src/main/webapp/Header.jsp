

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Header Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.header1 {
	background-color: #8b6508;
	padding: 8px 0;
	position: sticky;
	top: 0;
	z-index: 100;
}

ul {
	list-style-type: none;
	display: flex;
	justify-content: center;
	margin: 0;
}

li {
	padding: 0 15px;
}

li a {
	text-decoration: none;
	color: black;
	font-size: 16px;
	font-weight: bolder;
}

li a:hover {
	color: gold;
	transform: scale(1.3);
}

#login {
	color: black;
	height: 30px;
	width: 70px;
	border-radius: 5px;
}

#login:hover {
	color: gold;
}
</style>
</head>
<body>
	<div>
		<header class="container-fluid header1">
			<div
				class="container d-flex justify-content-between align-items-center">
				<img id="one" src="21.jpg" height="60px" width="100px">
				<ul class="d-flex">
					<ul>
						<% if (session.getAttribute("uname") != null) {%>


						<li><a href="register?logout=yes">Logout</a></li>
						<li><a href="Edit.jsp">Edit</a></li>
                         <li><a href="Home.jsp">Home</a></li>
                         
                               <li class="uname"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></li>
						<% if (session.getAttribute("id").equals("1")) {%>
						<li><a href="addDelEvent.jsp"> add OR delete</a></li>
                         	
						<%}%>
						<%} else {%>




						<li><a href="Home.jsp">Home</a></li>
						<li><a href="About.jsp">About Us</a></li>
						
						<li><a href="Registration.jsp">Register</a></li>
						<li><a href="Login.jsp">Login</a></li>

					



						<%}%>

						<li style="float: right"><img src=></li>
					</ul>
			</div>
		</header>
	</div>
</body>
</html>