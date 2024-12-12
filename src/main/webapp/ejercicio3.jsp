<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Media</title>
    <link rel="stylesheet" href="styles/style3.css">
</head>
<body>
<div class="container">
    <h2>Calculadora de Media de Notas</h2>
    <form method="post">
        <label for="nota1">Nota 1:</label>
        <input type="number" id="nota1" name="nota1" step="0.01" required><br>

        <label for="nota2">Nota 2:</label>
        <input type="number" id="nota2" name="nota2" step="0.01" required><br>

        <label for="nota3">Nota 3:</label>
        <input type="number" id="nota3" name="nota3" step="0.01" required><br>

        <button type="submit">Calcular Media</button>
    </form>

    <div class="result">
        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                try {
                    double nota1 = Double.parseDouble(request.getParameter("nota1"));
                    double nota2 = Double.parseDouble(request.getParameter("nota2"));
                    double nota3 = Double.parseDouble(request.getParameter("nota3"));

                    double media = (nota1 + nota2 + nota3) / 3;

                    out.println("<p><strong>Media Calculada:</strong> " + String.format("%.2f", media) + "</p>");
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Error: Asegúrate de ingresar números válidos.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
