<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Empleados</title>
</head>
<body>

	<h1>Listado de empleados</h1>
	<c:if test="${ccmensaje != null}">
		<h3>
		<c:out value="${ccmensaje}"></c:out>
		</h3>
	</c:if>

<table>
	<tr>
		<th>Nombre</th>
		<th>Especialidad</th>
	</tr>
	<c:forEach items="${listaempleados}" var="empleado">
	<tr>
		<td>${empleado.getNombreempleado()}</td>
		<td>${empleado.getEspecialidad()}</td>
		<td>
			<a href="${pageContext.request.contextPath}/EliminarEmpleado?id=${empleado.getIdEmpleado()}">Eliminar</a>&nbsp;
			<a href="${pageContext.request.contextPath}/EditarEmpleado?id=${empleado.getIdEmpleado()}">Editar</a>&nbsp;
		</td>
	</tr>
	</c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/AgregarEmpleado">Agregar empleado</a>

</body>
</html>