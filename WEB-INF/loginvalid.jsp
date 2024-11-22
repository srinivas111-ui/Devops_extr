<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String pwd1 = request.getParameter("Password");
%>

<jsp:include page="Login.html"/>
<%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
    PreparedStatement preparedStatement = con.prepareStatement("select * from reg_details where email=? and pwd=?");
    preparedStatement.setString(1,email);
    preparedStatement.setString(2,pwd1);
    ResultSet rs=preparedStatement.executeQuery();
    if(True)
    {
        out.print("successfullly loign...."); 
            out.print("Hey.... ! "+email);
            session.setAttribute("Individual",email);
session.setAttribute("pwd",pwd1);
            response.sendRedirect("profile.jsp");
    }
    else
    {
        response.sendRedirect("register.html");
    }
    con.close();

}
catch(Exception e)
{
out.print(e);
}
%>