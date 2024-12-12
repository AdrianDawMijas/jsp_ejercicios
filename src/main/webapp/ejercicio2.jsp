<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Saludos en Diferentes Idiomas</title>
    <link rel="stylesheet" href="styles/style2.css">
</head>
<body>
<form method="post" action="respuesta2.jsp">
    <h2>Saludos en Diferentes Idiomas</h2>

    <label for="nombre">Introduzca su nombre:</label>
    <input id="nombre" type="text" name="nombre" placeholder="Escribe tu nombre aquí" required/>

    <label for="idioma">Seleccione un idioma:</label>
    <select id="idioma" name="idioma" required>
        <option value="">Seleccione un idioma</option>
        <option value="es">Español</option>
        <option value="en">Inglés</option>
        <option value="pt">Portugués</option>
    </select>

    <button type="submit">Enviar</button>
</form>

<script>
    document.querySelector("form").addEventListener("submit", function (event) {
        const idioma = document.getElementById("idioma").value;

        if (!idioma) {
            event.preventDefault();
            alert("Por favor, seleccione un idioma antes de enviar el formulario.");
        }
    });
</script>
</body>
</html>
