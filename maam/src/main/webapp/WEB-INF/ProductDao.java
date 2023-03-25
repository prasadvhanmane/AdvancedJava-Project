package maam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ProductDao {
	private String dburl = "jdbc:mysql://localhost:3306/prasad";
	private String dbuname = "root";
	private String dbpassword = "";
	private String dbdriver = "com.mysql.cj.jdbc.Driver";
	String result;

	public void loadDriver(String dbDriver)
	{
	try {
	Class.forName(dbDriver);
	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}
	public Connection getConnection() {
	Connection con = null;
	try {
	con = DriverManager.getConnection(dburl, dbuname, dbpassword);
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	return con;
	}



	public ArrayList<productbean> view()
	{
		ArrayList<productbean> p1 = new ArrayList<productbean>();
		productbean obj = new productbean();
		
		 try {
			 loadDriver(dbdriver);
			 Connection con = getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from product");
		
			 ResultSet rs =  ps.executeQuery();
			 while(rs.next())
			 {
				 p1.add(new productbean(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
			 }
				
			}
		 catch (SQLException e) {
			 e.printStackTrace();
				 }
		 return p1;
	}
}
