package maam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
 
public class RegisterDao {
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
 
 public String insert(User member) {
 loadDriver(dbdriver);
 Connection con = getConnection();
 String sql = "insert into member values(?,?,?,?)";
 String result="Data Entered Successfully";
 try {
 PreparedStatement ps = con.prepareStatement(sql);
 ps.setString(1, member.getUname());
 ps.setString(2, member.getPassword());
 ps.setString(3, member.getEmail());
 ps.setNString(4, member.getPhone());
 ps.executeUpdate();
 } catch (SQLException e) {
 // TODO Auto-generated catch block
 result="Data Not Entered Successfully";
 e.printStackTrace();
 }
 return result;
 
 }
public String CheckLogin(String username,String password)
 {      loadDriver(dbdriver);
     Connection con = getConnection();
     
	 String sql = "select * from member where uname='"+username+"' and password='"+password+"';";
	 String sqlname="";
	 String sqlpass="";
	 String result = "";
	 
	 try {
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(sql);
		 
			if (rs.next()) {
				sqlname = rs.getString("uname");
				sqlpass = rs.getString("password");	
			}
			if (username.equals(sqlname)&&password.equals(sqlpass)) {  
	              result ="successfull";
	        }
			else{  
			    result = "fail"; 
			}	
		 
		 }
	 catch (SQLException e) {
		 // TODO Auto-generated catch block
 }
	return result;
 }
public  User GetUserdetails(String username,String password)
{
	 loadDriver(dbdriver);
     Connection con = getConnection();
     
	 String sql = "select * from member where uname='"+username+"' and password='"+password+"';";
	 String sqlname="";
	 String sqlpass="";
	 String sqlemail = "";
	 String sqlphone = "";
	 User obj=null;
	 
	 try {
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(sql);
		 
			if (rs.next()) {
				sqlname = rs.getString("uname");
				sqlpass = rs.getString("password");
				sqlemail = rs.getString("email");
				sqlphone = rs.getString("phone");
				}
			obj=new User(sqlname,sqlpass,sqlemail,sqlphone);
		}
	 catch (SQLException e) {
		 e.printStackTrace();
			 }
	 return obj;
}

public  String UpdateUser(String username,String password,String email,String phone,String up)
{
	try {
		RegisterDao rdao=new RegisterDao();
		Connection con = rdao.getConnection();
		String sql="update member set uname=?, password=?, email=?, phone=? where uname=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		ps.setString(3, email);
		ps.setString(4, phone);
		ps.setString(5, up);
		int status = ps.executeUpdate();
		if(status>0) {
		    result="successfull";
		}
		else {
			result="fail to update";
		}
		
		 } 
	catch (SQLException e) {
		
		 }
	return result;

}
public  String DeleteUser(String up)
{
	try {
		RegisterDao rdao=new RegisterDao();
		Connection con = rdao.getConnection();
		String sql="delete from member where uname=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, up);
		int status = ps.executeUpdate();
		if(status>0) {
		    result="successfull";
		}
		else {
			result="fail to update";
		}} 
	catch (SQLException e) {
		
		 }
	return result;

}
public String inquiry(User cu) {
loadDriver(dbdriver);
Connection con = getConnection();
String sql = "insert into inquiry values(?,?,?,?)";
String result="Thank You ,We will get back to you..";
try {
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,cu.getUname());
ps.setString(2,cu.getPassword());
ps.setNString(3,cu.getEmail());
ps.setString(4,cu.getPhone());
ps.executeUpdate();
} catch (SQLException e) {
// TODO Auto-generated catch block
result="Data Not Entered Successfully";
e.printStackTrace();
}
return result;

}

public ArrayList<User> view()
{
	ArrayList<User> p1 = new ArrayList<User>();
	User obj = new User();
	
	 try {
		 loadDriver(dbdriver);
		 Connection con = getConnection();
		 PreparedStatement ps = con.prepareStatement("select * from inquiry");
	
		 ResultSet rs =  ps.executeQuery();
		 while(rs.next())
		 {
			 p1.add(new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
		 }
			
		}
	 catch (SQLException e) {
		 e.printStackTrace();
			 }
	 return p1;
}
}
