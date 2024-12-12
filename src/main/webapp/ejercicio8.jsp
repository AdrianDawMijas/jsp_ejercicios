<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurador de Interior de Vehículo</title>
    <link rel="stylesheet" href="styles/style_vehicle.css">
</head>
<body>
<div class="container">
    <h2>Configurador de Interior de Vehículo</h2>
    <form method="post">
        <label for="tapiceria">Color de la tapicería:</label>
        <select id="tapiceria" name="tapiceria" required>
            <option value="blanco">Blanco</option>
            <option value="negro">Negro</option>
            <option value="berenjena">Berenjena</option>
        </select>
        <br>

        <label for="molduras">Material de las molduras:</label>
        <select id="molduras" name="molduras" required>
            <option value="madera">Madera</option>
            <option value="carbono">Carbono</option>
        </select>
        <br>

        <button type="submit">Mostrar Configuración</button>
    </form>

    <div class="result">
        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String tapiceria = request.getParameter("tapiceria");
                String molduras = request.getParameter("molduras");

                out.println("<h3>Configuración Seleccionada:</h3>");
                out.println("<p><strong>Color de la tapicería:</strong> " + tapiceria.substring(0, 1).toUpperCase() + tapiceria.substring(1) + "</p>");
                out.println("<p><strong>Material de las molduras:</strong> " + molduras.substring(0, 1).toUpperCase() + molduras.substring(1) + "</p>");
            }
        %>
    </div>
</div>
</body>
</html>
