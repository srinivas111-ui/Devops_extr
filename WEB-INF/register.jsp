 <%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("pwd");
java.util.Date dt=new java.util.Date();
String date=dt.toString();
out.println(firstName);
out.println(email);
out.println(password);
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
    PreparedStatement preparedStatement = con.prepareStatement("insert into reg_details values(?,?,?)");
        preparedStatement.setString(1,firstName);
 preparedStatement.setString(2,password);
        preparedStatement.setString(3,email);
        preparedStatement.executeUpdate();
        out.print("data inserted successfully");
        if(con!=null)
            out.print("Database connected successfully");

    con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }
%>