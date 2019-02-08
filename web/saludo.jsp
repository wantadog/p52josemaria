<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ejemplo de Página JSP</title>
</head>
<body>
<h1>Mi primera Web app con Java</h1>	
<p>
<%
LocalDateTime ahora = LocalDateTime.now();
int dia = ahora.getDayOfMonth();
DayOfWeek diaSemana = ahora.getDayOfWeek();
Month mes = ahora.getMonth();
int año = ahora.getYear();
String mensaje = "Hoy es " + dia + " " + diaSemana + " de " + mes + " del " + año;
%>
<%=mensaje %>
</p>
<%
String saludo;
int horaDelDia = ahora.getHour();

if (horaDelDia < 12) {
saludo = "Buenos días";
} else if (horaDelDia >= 12 && horaDelDia < 21) {
saludo = "Buenas tardes";
} else {
saludo = "Buenas noches";
}
%>
<p> <%= saludo%> </p>
</body>
</html>
