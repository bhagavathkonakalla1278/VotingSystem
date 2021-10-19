<%@page import="in.kluniversity.votingsystem.domain.Vote"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body>
	<div id="page">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
			<div id="tagline">
				<div>
					<h2 style="margin: 0px 0px 0px 315px;">Please register your
						vote below</h2>
					<div style="padding: 0px 0px 21px 0;">
						<center>
							<form method="POST" action="VotingServlet">
								<input type="hidden" name="username" id="username"
									value="<%=userName%>">
								<table cellspacing=0 cellpadding="10">
									<tr>
									<c:choose>
										<c:when test="${(user.vote).equalsIgnoreCase('C')}">
										<tr>	
											<td></td>
											<td align=left><input type="radio" name="vote" value="C"/>C</td>
										</tr>
										<tr>	
											<td></td>
											<td align=left><input type="radio" name="vote" value="Java"/>Java</td>
										</tr>
										<tr>
											<td></td>
											<td align=left><input type="radio" name="vote"	value="DotNet"/>Dot Net</td>
										</tr>
										<tr>
											<td></td>
											<td align=left><input type="radio" name="vote" value="Python" />Python</td>
										</tr>
										
										</c:when>
										<c:when test="${(user.vote).equalsIgnoreCase('Java')}">
										<tr>	
											<td></td>
											<td align=left><input type="radio" name="vote" value="C"/>C</td>
										</tr>
										<tr>	
											<td></td>
											<td align=left><input type="radio" name="vote" value="Java"/>Java</td>
										</tr>
										<tr>
											<td></td>
											<td align=left><input type="radio" name="vote"	value="DotNet"/>Dot Net</td>
										</tr>
										<tr>
											<td></td>
											<td align=left><input type="radio" name="vote" value="Python" />Python</td>
										</tr>
										
										</c:when>
										<c:when test="${(user.vote).equalsIgnoreCase('DotNet')}">
										    <tr>	
											<td></td>
											<td align=left><input type="radio" name="vote" value="C"/>C</td>
										    </tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote" value="Java"/>Java</td>
											</tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote"	value="DotNet"/>Dot Net</td>
											</tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote" value="Python" />Python</td>
											</tr>
										</c:when>
										
										<c:otherwise>
										<tr>	
											<td align=left style="color: #295071">Click to Vote:</td>
											<td align=left><input type="radio" name="vote" value="C"/>C</td>
										</tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote" value="Java"/>Java</td>
											</tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote"	value="DotNet"/>Dot Net</td>
											</tr>
											<tr>
												<td></td>
												<td align=left><input type="radio" name="vote" value="Python" />Python</td>
											</tr>
										</c:otherwise>
									</c:choose>
									</tr>
									<tr>
										<td></td>
										<td>
											<Button name="submit" type="submit" id="submit"
												value="Submit"
												style="width: 96px; height: 36px; font-size: 16px; color: #295071; margin: 0 0 0 -56px;">Submit</Button>
										</td>
									</tr>
								</table>
								<%
								  
								  String msg="Status";
								  msg = (String) request.getAttribute("message");
								  if(msg==null){
									  msg="";
								  }
								%>
								<p style="width: 500px;font-size: 16px;color: #c8085f;"><%=msg%></p>
							</form>
						</center>
					</div>
				</div>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>