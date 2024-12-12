<%@ page import="java.util.Random" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tablero de Ajedrez</title>
    <link rel="stylesheet" href="styles/style_chessboard.css">
</head>
<body>
<div class="container">
    <h2>Tablero de Ajedrez</h2>
    <table>
        <%
            Random rand = new Random();

            // Generar posiciones aleatorias para el alfil y el caballo
            int alfilFila, alfilColumna, caballoFila, caballoColumna;
            do {
                alfilFila = rand.nextInt(8);
                alfilColumna = rand.nextInt(8);
                caballoFila = rand.nextInt(8);
                caballoColumna = rand.nextInt(8);
            } while (alfilFila == caballoFila && alfilColumna == caballoColumna);

            // Dibujar el tablero
            for (int fila = 0; fila < 8; fila++) {
                out.println("<tr>");
                for (int columna = 0; columna < 8; columna++) {
                    String contenido = "";
                    String clase = ((fila + columna) % 2 == 0) ? "white" : "black";

                    if (fila == alfilFila && columna == alfilColumna) {
                        contenido = "♗"; // Alfil
                    } else if (fila == caballoFila && columna == caballoColumna) {
                        contenido = "♘"; // Caballo
                    }

                    out.println("<td class='" + clase + "'>" + contenido + "</td>");
                }
                out.println("</tr>");
            }
        %>
    </table>
</div>
</body>
</html>
