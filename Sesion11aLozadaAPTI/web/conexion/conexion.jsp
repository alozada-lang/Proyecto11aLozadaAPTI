<%-- 
    Document   : conexion
    Created on : 26/02/2026, 11:15:16 AM
    Author     : PC-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language = "java" import = "java.sql.*"  %>
<%
    Connection conexion=null; //conexion a base de datos
    PreparedStatement st=null; //sentecias SQL
    ResultSet rs=null;//resultado final de datos
   
    Class.forName("com.mysql.jdbc.Driver");
    conexion=DriverManager.getConnection("jdbc:mysql://localhost/bdlozadaapti","root","");
%>
