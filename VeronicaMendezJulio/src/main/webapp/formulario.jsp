<%@page import="Controladores.librosController2"%>



<%@include file="/includes/header.jsp"%>
<%@include file="/includes/navbar.jsp"%>

	<h1>Detalle libros</h1>
	
	<div class="row">
		<div class="col">
		
			<%@include file="/includes/mensajes.jsp"%>
			
			<form action="librosController2" method="post" class="mb-2">
			
				<input type="hidden" name="op" value="<%=librosController2.OP_GUARDAR%>">
			
				<div class="form-group">	
					<label for="id">Id:</label>
					<input type="text" name="id" value="${video.id}" readonly class="form-control">
				</div>
				
				<div class="form-group">
					<label for="nombre">Nombre:</label>
					<input type="text" name="nombre" value="${video.nombre}"
					       placeholder="Mínimio 3 máximo 150"
					       class="form-control">
				</div>
				
				<div class="form-group">
					<label for="codigo">Codigo:</label>
					<input type="text" name="codigo" value="${video.codigo}"
					       placeholder="Exactamente 11" 
						   class="form-control">
				</div>	
			
				<input type="submit" value="${(video.id != -1)?'Modificar':'Crear'}" class="btn btn-outline-primary  btn-block">
			
			</form>
			
			<c:if test="${video.id != -1}">
				<!-- boton lanzamiento -->
			<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
  			Eliminar
			</button>
			<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">¿quiere eliminar este titulo?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        si aceptas eliminaras el video de tu base de datos
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <form action="backoffice/videos" method="post">	
					<input type="hidden" name="op" value="<%=librosController2.OP_ELIMINAR%>">
					<input type="hidden" name="id" value="${video.id}" readonly>			
					<input type="submit" value="Eliminar" class="btn btn-outline-danger btn-block">	
				</form>
      </div>
    </div>
  </div>
</div>
			</c:if>		
		</div>
		<div class="col">	
		
			<div class="embed-responsive embed-responsive-16by9">
		
				<iframe class="embed-responsive-item"
				        src="https://www.youtube.com/embed/${video.codigo}" 
				        frameborder="0" 
				        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
				        allowfullscreen></iframe>
			</div>        
		</div>
	</div>
	
<%@include file="/includes/footer.jsp"%>