<jsp:include page="../portal/header.jsp"></jsp:include>
<jsp:include page="../portal/menuh.jsp"></jsp:include>
<jsp:include page="../portal/slider.jsp"></jsp:include>

 <div class="row">
 
<h2>Modulo para usuarios</h2> 


<% String usuario = request.getUserPrincipal().getName(); out.println("Bienvenido: " + usuario); if(request.isUserInRole("CLIENTE")){ out.println("<p><a href='../pedido'>Pedidos</a></p>"); } 
if(request.isUserInRole("ADMINISTRADOR")){ out.println("<p><a href='../admin'>Administración</a></p>"); } %> 
 
 </div>       
 <!-- /container -->
<jsp:include page="../portal/footer.jsp"></jsp:include>