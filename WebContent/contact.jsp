<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<title>Voting System</title>
<%
	String userName = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username"))
				userName = cookie.getValue();
		}
	}
	if (userName == null)
		response.sendRedirect("login.jsp");
%>
</head>
<style>
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 60px;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}

.card {
	box-shadow: 0 15px 20px 0 rgba(0, 0, 0, 0.1);
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: brown;
}

.button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: black;
	background-color: #FF7F50;
	text-align: center;
	cursor: pointer;
	width: 100%;
}
#header div#tagline div {
	
}
</style>
<body>
	<div id="page">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
			<center>
				<div id="tagline">
					<div>
						<h2 style="height: 0px;">KL University</h2>
						<br> Vaddeswaram, Guntur
						<%-- <img style="margin-left: 0%; width: 19%"
							alt="kluniversity"
							src="<%=request.getContextPath()%>/images/sum.jpg"> <img
							style="margin-left: 20%; width: 19%" alt="kluniversity"
							src="<%=request.getContextPath()%>/images/swa.jpg"> <img
							style="margin-left: 20%; width: 19%" alt="kluniversity"
							src="<%=request.getContextPath()%>/images/IMG_20210331_225228_816.jpg"> --%>

						<div class="row">
							<div class="column">
								<div class="card">
									<img src="<%=request.getContextPath()%>/images/sum.jpg"
										style="width: 20%">
									<div class="container">
										<center>
											<h2>PVS.SUMANTH</h2>
										</center>					
										<p>pvssumanth@gmail.com</p>
										<p>Mobile no :9158762545</p>
										<p>
											<button class="button">Contact</button>
										</p>
									</div>
								</div>
							</div>
							<div class="column">
								<div class="card">
									<img src="<%=request.getContextPath()%>/images/swa.jpg"
										style="width: 20%">
									<div class="container">
										<center>
											<h2>P.SWARNA LEKHA</h2>
										</center>
										
										<p>pswarnalekha@gmail.com</p>
										<p>Mobile no :8465791252</p>
										<p>
											<button class="button">Contact</button>
										</p>
									</div>
								</div>
							</div>
							<div class="column">
								<div class="card">
									<img src="<%=request.getContextPath()%>/images/IMG_20210331_225228_816.jpg"
										style="width: 20%">
									<div class="container">
										<center>
											<h2>K.V.R.BHAGAVATH</h2>
										</center>
										
										<p>bhagavathkonakalla@gmail.com</p>
										<p>Mobile no :9182276192</p>
										<p>
											<button class="button">Contact</button>
										</p>
									</div>
								</div>
							</div>
						
						
						</div>
			</center>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>