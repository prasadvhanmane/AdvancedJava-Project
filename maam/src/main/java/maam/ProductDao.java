package maam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
	
public String update(productbean obj)
	 {
		
		 try {
			 loadDriver(dbdriver);
			 Connection con = getConnection();
			 PreparedStatement ps = con.prepareStatement("update product set pname=?, ptype=? ,pcost=?,pimg=? where pid=?");
			 ps.setString(5,obj.getPid());
			 ps.setString(1, obj.getPname());
			 ps.setString(2, obj.getPtype());
			 ps.setString(3, obj.getPcost());
			 ps.setString(4, obj.getPimg());
			 
			int status=ps.executeUpdate();
			if(status>0) {
			    result="successfull";
			}
			else {
				result="fail to update";
			}
			 
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();}
		 return result;
}

public String delete(String id)
{
	
	 try {
		 loadDriver(dbdriver);
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("delete from product where pid=?");
		 ps.setString(1,id);
		 int status=ps.executeUpdate();
		if(status>0) {
		    result="successfull";
		}
		else {
			result="fail to update";
		}
		 
	 }
	 catch (Exception e) {
		// TODO: handle exception
		 e.printStackTrace();}
	 return result;
}
	 
public productbean viewonedata(String pid)
	 {
		 productbean p1 = new productbean();
		 try {
			 loadDriver(dbdriver);
			 Connection con = getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from product where pid=?");
			 ps.setString(1,pid);
			
			 ResultSet rs =  ps.executeQuery();
			 while(rs.next())
			 {
				 p1.setPid(rs.getString(1));
				 p1.setPname(rs.getString(2));
				 p1.setPtype(rs.getString(3));
				 p1.setPcost(rs.getString(4));
				 p1.setPimg(rs.getString(5));
				 
			 }
			
			 
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();}
		 return p1;
		}

public String insertproduct(productbean np) {
loadDriver(dbdriver);
Connection con = getConnection();
String sql = "insert into product values(?,?,?,?,?)";
String result="Data Entered Successfully";
try {
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, np.getPid());
ps.setString(2, np.getPname());
ps.setString(3, np.getPtype());
ps.setString(4, np.getPcost());
ps.setString(5, np.getPimg());
ps.executeUpdate();
} catch (SQLException e) {
// TODO Auto-generated catch block
result="Data Not Entered Successfully";
e.printStackTrace();
}
return result;

}
}
