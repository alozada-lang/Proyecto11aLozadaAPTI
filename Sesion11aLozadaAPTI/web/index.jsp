<%-- 
    Document   : index
    Created on : 26/02/2026, 10:56:54 AM
    Author     : PC-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="includes/header.jsp"/>

<br>
        <div class="container well">
            <center>
              
                <div class="thumbnail">
                   
                </div>
                <h4>Fecha y hora del sistema : <%= new java.util.Date() %></h4>
            </center>  
                <%@include file="conexion/conexion.jsp"%>
                <a class="btn bg-primary" href="ingresaremp.jsp"><h3>Alta de Empleados</h3></a><br>
       
               
                        
                
                <div class="row col-md-12" >
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">CODIGO</th>
                            <th style="text-align: center">NOMBRE</th>
                            <th style="text-align: center">APELLIDOS</th>
                            <th style="text-align: center">TELEFONO</th>
                            <th style="text-align: center">Operaciones</th>
                            <th style="text-align: center">Operaciones</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <%
                          st=conexion.prepareStatement("select * from empleados");
                          rs=st.executeQuery();
                          while(rs.next()){//inicia while
                        %>  
                        <tr>
                            <td><%=rs.getString("codigo")%></td>
                            <td><%=rs.getString("nombre")%></td>
                            <td><%=rs.getString("apellidos")%></td>
                            <td><%=rs.getString("telefono")%></td>
                            <td><a class="btn btn-primary" href="eliminar.jsp?codigo=<%=rs.getString("codigo")%>">Eliminar</a></td>
                            <td><a class="btn btn-info" href="editar.jsp?codigo=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&apellidos=<%= rs.getString(3)%>&telefono=<%= rs.getString(4)%>">Editar</a></td>
                        </tr>
                        <%
                          }//termina while  
                        %>
                    </tbody>
                </table>
            </div>

               

<jsp:include page="includes/footer.jsp"/>
