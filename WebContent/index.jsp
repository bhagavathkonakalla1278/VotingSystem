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
			<div id="tagline" style="text-align: justify;">
				<div style="font-size: 17px; width: 940px;">
					"Online Voting System" is a simple web-based online voting systems that will
					help our college to know student's most preferred language for software
					development. Online voting (also known as e-voting) is voting using
					electronic systems to aid casting and counting votes. <br> <br>Remote
					e-Voting is where voting is performed within the voter's sole
					influence, and is not physically supervised by representatives
					(e.g. voting from one's personal computer, mobile phone, television
					via the internet (also called i-voting). Electronic voting
					technology can speed the counting of ballots and can provide
					efficiency in statistics. <br> <br>In this project
					students have to register first by clicking on "Sign Up" button in
					order to vote for their preferred development language. Once
					registered, they can sign in through the "Student Login page" with
					their respective username and password. After successful sign in
					they can go to "Vote Here" tab and register their vote by selecting
					any one language of their choice and hitting the "Submit" button.
					Once done their vote will be registered. One vote per student is
					allowed. In "Voting Statistics" tab students can see the total
					number of votes received for each development language. Thank you!
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
</body>
</html>