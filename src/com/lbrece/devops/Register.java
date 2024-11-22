package com.lbrece.devops;
import java.servlet.*;
public class Register {

	public static void main(String[] args) {
		protected void doGet(HttpServlet Request,HttpServlet Response) {
			String firstName = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("pwd");
			java.util.Date dt=new java.util.Date();
			String date=dt.toString();
		}
		Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
	    PreparedStatement preparedStatement = con.prepareStatement("insert into reg_details values(?,?,?)");
	        preparedStatement.setString(1,firstName);
	 preparedStatement.setString(2,password);
	        preparedStatement.setString(3,email);
	        preparedStatement.executeUpdate();
	        System.out.print("data inserted successfully");
	        if(con!=null)
	            System.out.print("Database connected successfully");

	    con.close();
		// TODO Auto-generated method stub

	}

}
