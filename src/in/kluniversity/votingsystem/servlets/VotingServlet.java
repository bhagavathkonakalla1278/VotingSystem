package in.kluniversity.votingsystem.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.kluniversity.votingsystem.database.VotingBin;
import in.kluniversity.votingsystem.domain.Vote;


@WebServlet("/VotingServlet")
public class VotingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VotingServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Vote vt = new Vote();
		VotingBin vb = new VotingBin();
		int count=0;
		vt.setUsername(request.getParameter("username"));
		vt.setVotes(request.getParameter("vote"));
		
		try {
			count = vb.voteCheck(vt);
		} catch (ClassNotFoundException | SQLException e1) {
			
			e1.printStackTrace();
		}
		
		if(count>0) {
			String message = "Sorry! Your vote is already been registered!";
	        request.setAttribute("message", message);
	        RequestDispatcher rd = request.getRequestDispatcher("vote.jsp");
	        rd.forward(request,response);
		}
		else {
			try {
				vb.voteRegistration(vt);
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			String message = "Your vote has been registered. Thank you :)";
	        request.setAttribute("message", message);
	        RequestDispatcher rd = request.getRequestDispatcher("vote.jsp");
	        rd.forward(request,response);
		}
	}

}
