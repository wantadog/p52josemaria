<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="daw.ejemploweb.Cliente" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mostrando los datos</title>
</head>
<body>
<!-- Se recogen los valores que envía el formulario mediante el objeto 	request y su método getParameter() -->
	<%
Cliente cli;
		String edad = request.getParameter("edad");
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		
		if (email.equals("")||edad.equals("")||nombre.equals("")){
	%>

<!-- Si no se ha introducido algún parámetro se muestra el error

<center> <h2>Faltan parámetros</h2> </center>
<!-- Se han introducido los parámetros, creamos el objeto con los datos -->
	<% } else {
		cli = new Cliente(nombre, email, Integer.parseInt(edad));
	%>
	<p>
		Información recogida por el servidor:<br>
		
		Edad: <%= cli.getEdad() %> <br>
		Nombre: <%= cli.getNombre() %> <br>
		Correo: <%= cli.getEmail() %> <br>
		
	<% } %> <!-- LLave del else -->
	
</body>
</html>
