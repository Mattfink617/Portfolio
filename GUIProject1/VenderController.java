import java.sql.Connection;

public class VenderController {

	private Connection dbconn;
	private VenderModel model;
	
	public VenderController(Connection db) {
		this.dbconn = db;
		this.model = new VenderModel (db);
		
		
	}
	public void SearchVenderCatalog(String str) {
		
	}
}
	