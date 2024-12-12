<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: Alan Kenneth
  Date: 25/11/2024
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        String nombre = request.getParameter("nombre");
        String idioma = request.getParameter("idioma");

        //VALIDACION DE FORMULARIO
        if (Objects.nonNull(nombre) && nombre.length() > 2){

            if (idioma.equals("es")){
                out.println("Hola " + nombre);
            } else if (idioma.equals("en")){
                out.println("Hello " + nombre);
            } else if (idioma.equals("pt")){
                out.println("Olá " + nombre);
            }else{
                out.println("Idioma no válido");
            }
        } else {
            out.println("Introduzca un nombre válido");
        }
    %>

</body>
</html>
