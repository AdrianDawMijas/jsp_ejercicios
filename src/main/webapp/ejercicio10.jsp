<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Máquina de Helados</title>
  <link rel="stylesheet" href="styles/style_helados.css">
</head>
<body>
<div class="container">
  <h2>Máquina de Helados</h2>
  <form method="post">
    <div class="flavor">
      <img src="images/chocolate.jpg" alt="Chocolate">
      <label for="chocolate">Porcentaje de chocolate:</label>
      <input type="number" id="chocolate" name="chocolate" min="0" max="100" required>
    </div>
    <div class="flavor">
      <img src="images/fresa.jpeg" alt="Fresa">
      <label for="fresa">Porcentaje de fresa:</label>
      <input type="number" id="fresa" name="fresa" min="0" max="100" required>
    </div>
    <div class="flavor">
      <img src="images/vainilla.jpg" alt="Vainilla">
      <label for="vainilla">Porcentaje de vainilla:</label>
      <input type="number" id="vainilla" name="vainilla" min="0" max="100" required>
    </div>
    <button type="submit">Generar Tarrina</button>
  </form>

  <div class="result">
    <%
      if (request.getMethod().equalsIgnoreCase("POST")) {
        int chocolate = Integer.parseInt(request.getParameter("chocolate"));
        int fresa = Integer.parseInt(request.getParameter("fresa"));
        int vainilla = Integer.parseInt(request.getParameter("vainilla"));
        int suma = chocolate + fresa + vainilla;

        if (suma > 100) {
          out.println("<p class='error'>La suma de los porcentajes debe ser menor o igual que 100. Por favor, introduzca de nuevo los porcentajes.</p>");
        } else {
          out.println("<h3>Aquí tiene su tarrina de helado:</h3>");
          if (chocolate > 0) {
            out.println("<div class='flavor-result'>" + chocolate + "% de Chocolate</div>");
          }
          if (fresa > 0) {
            out.println("<div class='flavor-result'>" + fresa + "% de Fresa</div>");
          }
          if (vainilla > 0) {
            out.println("<div class='flavor-result'>" + vainilla + "% de Vainilla</div>");
          }
          if (suma < 100) {
            out.println("<div class='flavor-result'>Resto de la tarrina: " + (100 - suma) + "% vacío</div>");
          }
        }
      }
    %>
  </div>
</div>
</body>
</html>
