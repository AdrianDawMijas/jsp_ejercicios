<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor de Dólares a Euros</title>
    <link rel="stylesheet" href="styles/style4.css">
</head>
<body>
<div class="container">
    <h2>Conversor de Dólares a Euros</h2>
    <form method="post">
        <label for="dolares">Dólares:</label>
        <input type="number" id="dolares" name="dolares" step="0.01" placeholder="Ingrese cantidad en dólares" required><br>

        <button type="submit">Calcular</button>
    </form>

    <div class="result">
        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                try {
                    double dolares = Double.parseDouble(request.getParameter("dolares"));
                    double euros = dolares * 0.96;

                    out.println("<p><strong>Euros Calculados:</strong> " + String.format("%.2f", euros) + " €</p>");
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Error: Por favor, ingrese un número válido.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
