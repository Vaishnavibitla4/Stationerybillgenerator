<<<<<<< HEAD
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("delete from payregister where id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("msg","Record Has been Successfully Deleted");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
=======
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("delete from payregister where id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("msg","Record Has been Successfully Deleted");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
>>>>>>> c182d1ce7c7ad8742795b9aa9c49603fa88f4253
<jsp:forward page="ahome.jsp"></jsp:forward>