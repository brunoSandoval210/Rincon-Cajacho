
<%@ include file="/include/Admin_header.jsp" %>
<%@page import="Modelo.Usuario"%>

<div class="container-fluid">
    <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Modificar Usuarios</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="SvActualizarUsuario" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" placeholder="" name="txtNombre" value ="<%=usu.getName()%>" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Dni</span>
                        <input type="text" class="form-control" placeholder="" name="txtDNI" value ="<%=usu.getDni() %>" required>
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Email</span>
                        <input type="email" class="form-control" placeholder="" name="txtCorreo" value ="<%=usu.getEmail()%>"required>

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">contraseña</span>
                        <input type="text" class="form-control"  name="txtContrasena" value ="<%=usu.getPassword()%>" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">tipo</span>
                        <select type="text" class="form-select" aria-label="Default select example" name="txtTipo" value ="<%=usu.getType()%>" required>
                            <option selected>Seleccionar</option>
                            <option value="Administrador">Administrador</option>
                            <option value="Cliente">Cliente</option>
                        </select>
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
