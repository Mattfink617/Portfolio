import java.awt.Container;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
 

public class Vender_Catalog<VenderController> implements ActionListener {
		/**
		 * 	
		 */
	private static final long serialVersionUTD = 1L;
	
	private Connection dbconn;
	private VenderController contr;
	JButton button;							// buttons that search the database
	JButton button1;						// button that sends the buy information
	JTextField textField1 = new JFormattedTextField();
	JTextField textField2 = new JFormattedTextField();
	JTextField textField3 = new JFormattedTextField();
	JTextField textField4 = new JFormattedTextField();
	public Vender_Catalog() {
		
		//Input a box layout to make GUI easier to manage
		//two separate panels on one box to maximize efficiency
		
		textField1.setPreferredSize(new Dimension (300,100));
		textField2.setPreferredSize(new Dimension (300,350));
		textField2.setEditable(false);
		textField3.setPreferredSize(new Dimension (300,350));
		textField3.setEditable(false);
		textField4.setPreferredSize(new Dimension (300,100));
		
		
		button = new JButton("Submit");				//size of both buttons + labels
		button.setBounds(400,200,200,100);
		button1 = new JButton("Search");
		button.setBounds(400,200,200,100);
		
		
		
		this.setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));		// Details of the box visually
		this.setTitle("Edu ERP Search");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setSize(600,450);
		this.setVisible(true);
		
	
		JPanel Row1 = new JPanel();
		
			Row1.add(button);
			Row1.add(textField1);
			button.setActionCommand("Give");
			button.addActionListener(this);
		this.add(Row1);
			
		JPanel Row2 = new JPanel();
			
			Row2.add(textField2);
			Row2.add(textField3);
			this.add(Row2);
	
		
		JPanel Row3 = new JPanel();
		
			Row3.add(button1);
			button1.setActionCommand("Send");
			button1.addActionListener(this);
			Row3.add(textField4);
			this.add(Row3);
			
			//HoldConn();
			try {
				getConnection();
			}catch(Exception e) {
				System.out.println(e);
			}
	
	}
	
	public Connection getConnection() throws SQLException {
		String server = "penguin.cairn.edu";
		String portnum = "3306";
		String dbname = "eduerp";
		String user = "mf602";
		String password = "MattFink";
		
		String connStr = "jdbc:mysql://" + server + ":" + portnum + "/" + dbname;// + "?user=" + user + "&password=" + password;


		try {
		    
		    Connection conn = DriverManager.getConnection(connStr, user, password);
		    System.out.println("Connected to database");
		    return conn;
		}
		catch (Exception e){
		    e.printStackTrace();
		}
		
	    return null;
	}
	
	// connection to the database
	public void HoldConn() {
		String server = "penguin.cairn.edu";
		String portnum = "3306";
		String dbname = "eduerp";
		String user = "mf602";
		String password = "MattFink";
		String connString = "jdbc:mariadb://"+server+":"+portnum+"/"+dbname;
		try {
			dbconn = DriverManager.getConnection(connString, user, password);	
			System.out.println("Connection Estabished");
			PreparedStatement stmt = dbconn.prepareStatement(
					"SELECT entity_id, entity_name FROM ent_entities WHERE entity_name Like %Bistro%"
			);	
				
			//stmt.setString(1,"%Bistro%");
			ResultSet r = stmt.executeQuery();
			while (r.next()) {
				System.out.println(r.getString(2));
			}
			//contr = new VenderController (dbconn);
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
		public static void main(String args[])	{
			
			SwingUtilities.invokeLater(new Runnable()	{
				public void run() {
					new Vender_Catalog();
				}
			});
		}
				
	// Not sure what to do with these methods
	
		private void add(JPanel row1) {
		
	}
		private Container getContentPane() {
		return null;
	}
		private void setVisible(boolean b) {
		
	}
		private void setSize(int i, int j) {
		
	}
		private void setDefaultCloseOperation(int exitOnClose) {
		
	}
		private void setTitle(String string) {
		
	}
		private void setLayout(BoxLayout boxLayout) {
		
	}
		public void actionPerformed(ActionEvent e) {
			
		}
	
	

	}

