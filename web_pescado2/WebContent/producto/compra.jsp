<jsp:include page="../portal/header.jsp"></jsp:include>
<jsp:include page="../portal/menuh.jsp"></jsp:include>
<div class="container theme-showcase" role="main">

<%
	String codigo = request.getParameter("codigo");
	
	String nombre = "Producto " + codigo;
	String descripcion = "Este producto sirve para ....";
	String foto = "../imagenes/foto" + codigo + ".jpg";
	String precio = "23.000";
%>

<h2><%= nombre %></h2>
<p>
<img src="<%= foto %>"/>
<%= descripcion %>
</p>
<p>Precio: <%= precio %></p>

<form action="../Compra" method="post">
<input type="hidden" name="codigo" value="<%= codigo %>">
<p>Cantidad: <input type="number" name="cantidad"></p>
<p><input type="submit" value="Comprar"></p>
</form>

</div> <!-- /container -->
<jsp:include page="../portal/footer.jsp"></jsp:include>