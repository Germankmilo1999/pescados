<script type="text/javascript" src="../js/script1.js"></script>

      <div class="page-header">
        <h1>LISTADO DE PRODUCTOS</h1>
      </div>

      <div class="row">
      <hr>
        <div id="div_productos" class="col-sm-12">
        	<jsp:include page="productos.jsp">
        	<jsp:param value="1" name="categoria"/>
        	</jsp:include>
        </div><!-- /.col-sm-9 -->
        
      </div>
