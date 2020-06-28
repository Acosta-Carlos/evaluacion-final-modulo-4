<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asesor�as</title>
<!-- CSS Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body class="bg-light">

<h1 class="display-4 p-2 font">Formulario Registro de Asesor�as</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>
  <form action="CrearAsesoria" method="post" class="form pt-3">
  	<table class="table-bordered">
       	<tr>
            <td class="p-3">
            <label>ID Asesor�a:</label>
            <input type="numeric" name="idasesoria" placeholder="Ingresar ID Asesor�a">&nbsp;
            <label>Fecha: </label>
			<input id="fecha" type="text" name="fecha" placeholder="dd-mm-aaaa"/>
            <br><br>
            <label>ID Visitas:</label>
            <input type="numeric" name="visitaid" placeholder="Ingresar ID Visitas">
            <br><br>     
            <label>Detalle: </label><br>
            <textarea name="detalle" rows="5" cols="60" placeholder="Ingresar detalle de la asesor�a con un m�ximo hasta 500 caracteres"></textarea>
            <br>
            <label>Gesti�n: </label><br>
            <textarea name="gestion" rows="5" cols="60" placeholder="Ingresar gesti�n de la asesor�a con un m�ximo hasta 500 caracteres"></textarea>
            <br>
            <label>Propuestas: </label><br>
            <textarea name="propuestas" rows="5" cols="60" placeholder="hasta 500 caracteres"></textarea>
            <br>
            <label>Asesoria Especial: </label>&nbsp;
            <div class="form-check-inline">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="especial" value="si">S�
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                  <input type="radio" class="form-check-input" name="especial" value="no">No
                </label>
            </div>
            <br>
            <input type="submit" value="Crear asesor�a" class="btn btn-outline-primary"/>
            </td>
        </tr>
    </table>
   </form>
</body>

</html>