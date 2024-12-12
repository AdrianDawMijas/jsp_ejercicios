<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos Personales</title>
    <link href="styles/style1.css" rel="stylesheet">
</head>
<body>
<div class="caja">
    <h2 class="cajin"><b>Información Personal</b></h2>
    <ul>
        <li><strong>Nombre:</strong> <%= "Manolo" %></li>
        <li><strong>Edad:</strong> <%= 20 %> años</li>
        <li><strong>Fecha de nacimiento:</strong> <%= "2004-11-25" %></li>
        <li><strong>Altura:</strong> <%= 1.75 %> m</li>
        <li><strong>Estudiante:</strong> <%= true ? "Sí" : "No" %></li>
    </ul>
</div>
</body>
</html>

