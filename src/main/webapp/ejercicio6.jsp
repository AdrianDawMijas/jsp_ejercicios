<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Multiplicar</title>
    <link rel="stylesheet" href="styles/style6.css">
</head>
<body>
<div class="container">
    <h2>Tabla de Multiplicar</h2>
    <form method="post">
        <label for="numero">Ingrese un número:</label>
        <input type="number" id="numero" name="numero" placeholder="Ingrese un número" required>
        <button type="submit">Mostrar Tabla</button>
    </form>

    <div class="result">
        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                try {
                    int numero = Integer.parseInt(request.getParameter("numero"));
                    out.println("<h3>Tabla de multiplicar del " + numero + ":</h3>");
                    out.println("<table>");
                    out.println("<thead><tr><th>Multiplicando</th><th>Multiplicador</th><th>Resultado</th></tr></thead>");
                    out.println("<tbody>");
                    for (int i = 1; i <= 10; i++) {
                        out.println("<tr><td>" + numero + "</td><td>" + i + "</td><td>" + (numero * i) + "</td></tr>");
                    }
                    out.println("</tbody>");
                    out.println("</table>");
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Error: Asegúrate de ingresar un número válido.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
