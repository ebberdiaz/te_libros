<%@page import ="com.emergentes.modelo.Libro"%>
<%
 Libro lib = (Libro)request.getAttribute("lib");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Libro</h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= lib.getId()%>">
            <table>
                <tr>
                    <td> ISBN </td>
                    <td> <input type="text" name="isbn" value="<%= lib.getIsbn()%>"></td>
                </tr>  
                <tr>
                    <td> Titulo </td>
                    <td> <input type="text" name="titulo" value="<%= lib.getTitulo()%>"></td>
                </tr>
                <tr>
                    <td> Categoria </td>
                    <td> <input type="text" name="categoria" value="<%= lib.getCategoria()%>"></td>
                </tr>
                <td>  </td>
                <td> <input type="submit" ></td>
            </table>

            
        </form>
    </body>
</html>
