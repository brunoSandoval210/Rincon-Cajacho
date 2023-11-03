
<%@ include file="/include/Admin_header.jsp" %>
<%@page import="Modelo.*"%>

<div class="container-fluid">
    <% Productos prod = (Productos) request.getSession().getAttribute("prodEditar");%>
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Modificar Productos</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="SvActualizarProducto" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Codigo</span>
                        <input type="text" class="form-control"  name="Codigo" value ="<%=prod.getCode()%>" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control"  name="Nombre" value ="<%=prod.getName()%>" required>
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Precio</span>
                        <input type="text" class="form-control"  name="Precio" value ="<%=prod.getPrice()%>"required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Stock</span>
                        <input type="text" class="form-control"  name="Stock" value ="<%=prod.getStock()%>" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Imagen</span>
                        <input type="text" class="form-control"  name="Imagen" value ="<%=prod.getImagen()%>" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Descripcion</span>
                        <textarea type="text" class="form-control"  name="Descripcion" value ="<%=prod.getDescripcion()%>" required></textarea>
                    </div>
                 
                   
                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit"  value="Modificar" class="btn btn-danger"/>
                    </div>
                </div>
            </form>
            <div class="col">
            </div>
        </div>
    </div> 
</div>

<%@ include file="/include/Admin_footer.jsp" %>
