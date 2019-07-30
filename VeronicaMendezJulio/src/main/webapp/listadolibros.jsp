<%@page import="Controladores.librosController2"%>

<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navbar.jsp"%>

	<h1>Listado Videos</h1>
	
	
	<%@include file="/includes/mensajes.jsp"%>
			
	${libros}

	<a href="/librosController2?op=<%=librosController2.OP_NUEVO%>" class="mb-3 btn btn-outline-primary">Nuevo Libro</a>
	
	
	
	
<%@include file="/includes/footer.jsp"%>