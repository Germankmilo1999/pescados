<hr>
<div class="container theme-showcase" role="main">

<%
String codigo = request.getParameter("codigo");
String nombre = request.getParameter("nombre");
String precio = request.getParameter("precio");
String descripcion = request.getParameter("descripcion");

%>

            <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive" src="http://placehold.it/750x500" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="http://placehold.it/750x500" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="http://placehold.it/750x500" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>

            <div class="col-md-4">
                <h3><%= nombre %>   cd. <%= codigo %>  </h3>
                
                <p><%= descripcion %></p>
              	<p>Cod. <%= precio %></p>
            </div>
<form action="../Compra" method="post">
<input type="hidden" name="codigo" value="<%= codigo %>">
<p>Cantidad: <input type="number" name="cantidad"></p>
<p><input type="submit" value="Comprar"></p>
</form>
</div> <!-- /container -->
