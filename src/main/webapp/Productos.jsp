


<%@include file="include/general_header.jsp" %> 
<%@page import="Modelo.Controladora"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Productos"%>
<%@page import="java.util.List"%>

    <p class="fs-1 fw-bold text-center"><span class="text-danger">Nuestros</span> productos</p>

    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

            <% Controladora control=new Controladora(); List<Productos> listaProductos = new ArrayList<>();
                    listaProductos = control.traerProductos();

                    for (Productos prod : listaProductos) {
                    %>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <img src="<%= prod.getImagen()%>" class="card-img-top" alt="...">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="card-title fw-bold">
                                        <%= prod.getName()%>
                                    </h5>
                                    <p class="card-text fs-6 fw-lighter"><%= prod.getDescripcion()%></p>
                                    <div class="card-text fw-bold">
                                        S/<%= prod.getPrice()%>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">

                                    <form action="SvAgregarCarrito" method="post">
                                        <input type="hidden" class="form-control" name="id" value="<%= prod.getId()%>" required/>
                                        <button type="submit" class="btn btn-outline-danger mt-auto">Añadir al carrito</button>
                                     
                           
                            
                            </form>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                      
                    <%}%>
                  
        </div>
    </div>
</section>




<%@include file="include/Admin_footer.jsp" %> %>