function getProductos(categoria){
	$("#div_productos").load("productos.jsp?categoria=" + categoria);
	for(var i=1;i<=5; i=i+1){
		$("#c" + i).removeClass("list-group-item active").addClass("list-group-item");
	}
	$("#c" + categoria).removeClass("list-group-item").addClass("list-group-item active");
}