<%@ page import="java.util.Calendar, java.util.GregorianCalendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generador de Calendario</title>
    <link rel="stylesheet" href="styles/style_calendar.css">
</head>
<body>
<div class="container">
    <h2>Generador de Calendario</h2>
    <form method="post">
        <label for="mes">Nombre del Mes:</label>
        <input type="text" id="mes" name="mes" placeholder="Ej: enero" required>

        <label for="anio">Año:</label>
        <input type="number" id="anio" name="anio" placeholder="Ej: 2024" required>

        <button type="submit">Generar Calendario</button>
    </form>

    <div class="result">
        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                try {
                    String nombreMes = request.getParameter("mes");
                    int anio = Integer.parseInt(request.getParameter("anio"));

                    // Obtener el número del mes
                    int mes;
                    switch (nombreMes.toLowerCase()) {
                        case "enero": mes = Calendar.JANUARY; break;
                        case "febrero": mes = Calendar.FEBRUARY; break;
                        case "marzo": mes = Calendar.MARCH; break;
                        case "abril": mes = Calendar.APRIL; break;
                        case "mayo": mes = Calendar.MAY; break;
                        case "junio": mes = Calendar.JUNE; break;
                        case "julio": mes = Calendar.JULY; break;
                        case "agosto": mes = Calendar.AUGUST; break;
                        case "septiembre": mes = Calendar.SEPTEMBER; break;
                        case "octubre": mes = Calendar.OCTOBER; break;
                        case "noviembre": mes = Calendar.NOVEMBER; break;
                        case "diciembre": mes = Calendar.DECEMBER; break;
                        default:
                            out.println("<p class='error'>Error: Nombre del mes inválido.</p>");
                            return;
                    }

                    // Crear instancia de Calendar y configurar el mes y año
                    Calendar calendar = new GregorianCalendar(anio, mes, 1);
                    int diasEnMes = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

                    out.println("<h3>Calendario de " + nombreMes.substring(0, 1).toUpperCase() + nombreMes.substring(1).toLowerCase() + " " + anio + "</h3>");
                    out.println("<table>");
                    out.println("<tr><th>Lunes</th><th>Martes</th><th>Miércoles</th><th>Jueves</th><th>Viernes</th><th>Sábado</th><th>Domingo</th></tr>");

                    int diaSemana = calendar.get(Calendar.DAY_OF_WEEK) - 1;
                    if (diaSemana == 0) diaSemana = 7; // Ajuste para empezar con Lunes

                    out.println("<tr>");
                    for (int i = 1; i < diaSemana; i++) {
                        out.println("<td></td>");
                    }

                    for (int dia = 1; dia <= diasEnMes; dia++) {
                        out.println("<td>" + dia + "</td>");
                        if ((dia + diaSemana - 1) % 7 == 0) {
                            out.println("</tr><tr>");
                        }
                    }

                    out.println("</tr>");
                    out.println("</table>");
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Error: El año debe ser un número válido.</p>");
                }
            }
        %>
    </div>
</div>
</body>
</html>
