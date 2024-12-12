<%@ page import="java.math.BigDecimal" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solución de Ecuación Cuadrática</title>
    <link rel="stylesheet" href="styles/style5.css">
</head>
<body>
<div class="container">
    <h2>Solución de Ecuación Cuadrática</h2>
    <form method="post">
        <label for="a">Valor de a:</label>
        <input type="number" step="any" id="a" name="a" placeholder="Ingrese el valor de a" required>

        <label for="b">Valor de b:</label>
        <input type="number" step="any" id="b" name="b" placeholder="Ingrese el valor de b" required>

        <label for="c">Valor de c:</label>
        <input type="number" step="any" id="c" name="c" placeholder="Ingrese el valor de c" required>

        <button type="submit">Calcular</button>
    </form>

    <div class="result">
        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                try {
                    BigDecimal a = new BigDecimal(request.getParameter("a"));
                    BigDecimal b = new BigDecimal(request.getParameter("b"));
                    BigDecimal c = new BigDecimal(request.getParameter("c"));

                    // Calculamos el discriminante: b^2 - 4ac
                    BigDecimal discriminante = b.multiply(b).subtract(a.multiply(c).multiply(new BigDecimal(4)));

                    if (discriminante.compareTo(BigDecimal.ZERO) < 0) {
                        out.println("<p class='error'>Error: El discriminante es negativo. No se pueden calcular raíces reales.</p>");
                    } else {
                        // Calculamos las dos raíces
                        BigDecimal sqrtDiscriminante = new BigDecimal(Math.sqrt(discriminante.doubleValue()));
                        BigDecimal dosA = a.multiply(new BigDecimal(2));
                        BigDecimal menosB = b.negate();

                        BigDecimal x1 = menosB.add(sqrtDiscriminante).divide(dosA, BigDecimal.ROUND_HALF_UP);
                        BigDecimal x2 = menosB.subtract(sqrtDiscriminante).divide(dosA, BigDecimal.ROUND_HALF_UP);

                        out.println("<p><strong>Raíz 1:</strong> " + x1 + "</p>");
                        out.println("<p><strong>Raíz 2:</strong> " + x2 + "</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Error: Asegúrate de ingresar números válidos.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
