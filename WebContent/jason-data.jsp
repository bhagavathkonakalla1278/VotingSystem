<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<title>Voting System</title>

</head>
<body>
	<div id="page">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
			<center>
				<div id="tagline">
					<div style="text-align: justify; width: 940px;">
						<h2>JSON Data</h2>
							<%
								String jsondata = (String) request.getAttribute("jsondata");
							%>
							<%=jsondata%>
					</div>
				</div>
			</center>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>