
<%
	String userName = null;
	String role = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			
			if (cookie.getName().equals("username")) {
				userName = cookie.getValue();
			}
			if (cookie.getName().equals("role")) {
				role = cookie.getValue();
			}
		}
	}
	if (userName == null || role == null){
		response.sendRedirect("login.jsp");
	}
%>
<div id="header">
	<div id="section">
		<div>
			<h1
				style="text-align: center; color: darkturquoise; margin: 0px 0 0px 320px;">Online
				University Voting System</h1>
			<img style="margin: -10%; width: 19%" alt="kluniversity"
				src="<%=request.getContextPath()%>/images/kl-logo.jpg">
		</div>
	</div>
	<ul>
		
		<li><a href="index.jsp">Project Description</a></li>
		<li><a href="vote.jsp">Vote Here</a></li>
		<%
			if (role != null && role.equalsIgnoreCase("admin")) {
		%>

		<li><a href="vote-stats.jsp">Voting Statistics</a></li>
		<li><a href="JasonServlet">Analytics</a></li>

		<%
			}
		%>
		<li><a href="contact.jsp">Contact us</a></li>
		<li><a href="logoutServlet">Logout</a></li>
		<li></li>
		
	</ul>
	
	<h3 style="margin-left: 20%; color: red;"><a class="welcome"><b>Welcome! <%=userName%></b></a></h3>

</div>