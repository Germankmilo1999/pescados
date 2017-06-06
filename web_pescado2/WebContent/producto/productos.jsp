      <div class="row">
<%@ page import="org.comercio.producto.tienda"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="org.comercio.producto.Producto"%>
<% 
	String categoria = request.getParameter("categoria");
 	tienda tienda = new tienda();
 	ArrayList <Producto> lista = tienda.getProductos();
 	for(Producto producto : lista){
%>    
        <!-- Projects Row -->

            <div class="col-md-6 img-portfolio">
                    <img id="imgP" class="img-responsive img-hover" src="<%=producto.getImagen()%>" alt="">
               
                <h2>
                    <%=producto.getNombre()%> 
                </h2>
                <p> <%=producto.getDescripcion()%> </p>
           
            
 		    <form action="../pedido" method="post">
 		    <input type="hidden" name="nombre" value="<%=producto.getNombre()%>">
			<input type="hidden" name="codigo" value="<%=producto.getCodigo()%>">
			<input type="hidden" name="precio" value="<%=producto.getPrecio()%>">
			<input type="hidden" name="descripcion" value="<%=producto.getDescripcion()%>">
			<button class="add-to-cart btn btn-default" type="submit">Ver detalles &raquo;</button>
			</form>   
             </div>
<%
	}
%>      
      </div>
