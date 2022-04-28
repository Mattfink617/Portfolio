import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SQLclass {
	String server = "penguin.cairn.edu";
	String portnum = "3306";
	String dbname = "eduerp";
	//String user = "mf602";
	//String password = "MattFink";

	String connStr = "jdbc:mysql://" + server + ":" + portnum + "/" + dbname;// + "?user=" + user + "&password=" + password;
	Connection dbconn;
	
	public Boolean connectToDB(String user, String password) {
		try {
		    dbconn = DriverManager.getConnection(connStr, user, password);
		    
		    System.out.println("Connected to database");
		    return true;
		} catch (Exception e){
		    e.printStackTrace();
		    System.out.println("Failed to connect to database/n"+e);
		    return false;
		}
	}
	
	public ResultSet runSQL(String sql) {
		try {
			PreparedStatement stmt = dbconn.prepareStatement(sql);
			System.out.println("SQL executed: " + sql);
			return stmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Failed to execute SQL\n" + e);
			return null;
		}	
		
	}
}
