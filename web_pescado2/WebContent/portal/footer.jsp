       <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                	<%@ page import="java.util.Vector" %>
					<%@ page import="org_pescado.Item" %>
					
                	<%
					Vector compras = (Vector)session.getAttribute("compras");
					out.println("<p>Session ID: " + session.getId() + "</p>");	
					%>
                
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

   
    <!-- Script to Activate the Carousel --> 
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
	
</body>

</html>

    