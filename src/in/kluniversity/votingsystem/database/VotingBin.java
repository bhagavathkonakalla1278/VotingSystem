package in.kluniversity.votingsystem.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import in.kluniversity.votingsystem.domain.Register;
import in.kluniversity.votingsystem.domain.Vote;

public class VotingBin {

	public VotingBin() {
		// TODO Auto-generated constructor stub
	}

	private static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static private Connection connection;

	public static Connection getConnection() throws SQLException {
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdatabase", "root", "root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return connection;
	}

	public static void shutdown() throws SQLException {
		if (connection != null) {
			connection.close();
		}
	}

	public int loginCheck(Register reg) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection;
		connection = getConnection();
		int count;

		String queryStr = "select count(*) from studentdata where username = '" + reg.getUsername()
				+ "' and password = '" + reg.getPassword() + "'";
		Statement queryStmt = connection.createStatement();
		ResultSet result;
		result = queryStmt.executeQuery(queryStr);
		result.next();
		count = result.getInt(1);
		result.close();
		queryStmt.close();
		return count;
	}
	
	// return role based on username 
	public String getRoleBasedOnUsername(String username) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection;
		connection = getConnection();
		String queryString="SELECT role FROM studentdata where username = '"+username+"'";
		Statement queryStmt=connection.createStatement();
		ResultSet result;
		result = queryStmt.executeQuery(queryString);
		result.next();
		String role=result.getString(1);
		result.close();
		queryStmt.close();
		return role;		
	}

	public int voteCheck(Vote vt) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection;
		connection = getConnection();
		int count;

		String queryStr = "select count(*) from devlang where username = '" + vt.getUsername() + "'";
		Statement queryStmt = connection.createStatement();
		ResultSet result;
		result = queryStmt.executeQuery(queryStr);
		result.next();
		count = result.getInt(1);
		result.close();
		queryStmt.close();
		return count;
	}

	public void loginRegistration(Register reg) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection;
		connection = getConnection();

		String queryStr1 = "insert into studentdata (fname,lname,username,password) values ('" + reg.getfName() + "','"
				+ reg.getlName() + "','" + reg.getUsername() + "','" + reg.getPassword() + "')";
		Statement queryStmt = connection.createStatement();
		try {
			queryStmt.executeUpdate(queryStr1);
		} catch (Exception e) {
		}
		queryStmt.close();
	}

	public List<Vote> displayVotingStatistics() throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		List<Vote> list = new ArrayList<Vote>();
		Vote vt = new Vote();
		Connection connection;
		connection = getConnection();
		int javaCount, dotnetCount, pythonCount,cCount;

		String queryStr1 = "select count(*) from devlang where votes = 'Java'";
		String queryStr2 = "select count(*) from devlang where votes = 'DotNet'";
		String queryStr3 = "select count(*) from devlang where votes = 'Python'";
		String queryStr4 = "select count(*) from devlang where votes = 'C'";
		Statement queryStmt = connection.createStatement();
		Statement queryStmt2 = connection.createStatement();
		Statement queryStmt3 = connection.createStatement();
		Statement queryStmt4 = connection.createStatement();
		ResultSet result1, result2, result3,result4;

		result1 = queryStmt.executeQuery(queryStr1);
		result2 = queryStmt2.executeQuery(queryStr2);
		result3 = queryStmt3.executeQuery(queryStr3);
		result4 = queryStmt4.executeQuery(queryStr4);

		if (result1.next()) {
			javaCount = result1.getInt(1);
			vt.setJavaCount(javaCount);
		}
		if (result2.next()) {
			dotnetCount = result2.getInt(1);
			vt.setDotnetCount(dotnetCount);
		}
		if (result3.next()) {
			pythonCount = result3.getInt(1);
			vt.setPythonCount(pythonCount);
		}
		if (result4.next()) {
			cCount = result4.getInt(1);
			vt.setcCount(cCount);
		}
		list.add(vt);
		result1.close();
		result2.close();
		result3.close();
		result4.close();
		queryStmt.close();
		queryStmt2.close();
		queryStmt3.close();
		queryStmt4.close();
		return list;
	}

	public void voteRegistration(Vote vt) throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection;
		connection = getConnection();

		String queryStr = "insert into devlang (username,votes) values ('" + vt.getUsername() + "','" + vt.getVotes()
				+ "')";
		Statement queryStmt = connection.createStatement();
		try {
			queryStmt.executeUpdate(queryStr);
		} catch (Exception e) {
		}
		queryStmt.close();
	}

	public List<Vote> getVote() throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		List<Vote> list1 = new ArrayList<Vote>();
		Connection connection;
		connection = getConnection();

		String queryStr1 = "select * from devlang";
		Statement queryStmt = connection.createStatement();
		ResultSet result1;

		result1 = queryStmt.executeQuery(queryStr1);
		while (result1.next()) {
			Vote vt = new Vote();
			vt.setId(result1.getInt("id"));
			vt.setUsername(result1.getString("username"));
			vt.setVotes(result1.getString("votes"));
			list1.add(vt);
		}
		result1.close();
		queryStmt.close();
		return list1;
	}

	
}
