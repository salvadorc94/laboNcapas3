<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<th>Nombre</th>
		<th>Apellido</th>
		<th>Fecha de Nacimiento</th>
		<th>Carrera</th>
		<th>Experiencia</th>
	</tr>
	<tr>
		<td><c:out value="${student.name}"/></td>
		<td><c:out value="${student.lastName}"/></td>
		<td><c:out value="${student.bDate}"/></td>
		<td><c:out value="${student.career}"/></td>
		<td><c:out value="${student.experience}"/></td>
	</tr>
</table>
<c:set value="${edad}" var="edad"/>
<c:choose>
    <c:when test="${edad le 18 }">
        <br>
        <h1><c:out value="Tienes ${edad} eres menor de edad."/></h1>
    </c:when>
    <c:otherwise>
    	<br>
        <h1><c:out value="Tienes ${edad} eres mayor de edad."/></h1>
    </c:otherwise>
</c:choose>


</body>
</html>