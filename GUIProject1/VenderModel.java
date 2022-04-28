import java.sql.Connection;

public class VenderModel {
	private Connection dbconn;
	public VenderModel(Connection db) {
		this.dbconn = db;
	}
	public void Searchdb(String str) {
		String q = "Select";	// make a select query
	}
}
