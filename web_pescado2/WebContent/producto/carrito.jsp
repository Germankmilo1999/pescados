<jsp:include page="../portal/header.jsp"></jsp:include>
<jsp:include page="../portal/menuh.jsp"></jsp:include>
<div class="container theme-showcase" role="main">

<%@ page import="java.util.Vector" %>
<%@ page import="org_pescado.Item" %>

<%
	Vector compras = (Vector)session.getAttribute("compras");
	
	out.println("<p>Session ID: " + session.getId() + "</p>");	

	if(compras == null){
		out.println("<p>No hay elementos en el carro de compras.</p>");	
		return;
	}
	
	for(int i=0; i<compras.size(); i=i+1){
		Item item = (Item)compras.elementAt(i);
		out.println("<hr>");
		out.println("<p>Producto: " + item.getCodigo());
		out.println("<br/>Cantidad: " + item.getCantidad() + "</p>");
	}
%>

</div> <!-- /container -->
<jsp:include page="../portal/footer.jsp"></jsp:include>