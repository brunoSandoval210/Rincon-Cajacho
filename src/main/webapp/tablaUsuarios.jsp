<%@page import="Modelo.Usuario"%>
<%@ include file="/include/Admin_header.jsp" %>

<div class="container-fluid">
    <h1 class="mt-5" style="text-align: center">Tabla Usuarios</h1>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>DNI</th>
                        <th>CORREO</th>
                        <th>CONTRASEÑA</th>
                        <th>TIPO</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%  List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                        for (Usuario usu : listaUsuarios) {
                    %>
                    <tr>
                        <th><%= usu.getId()%></th>
                        <td><%= usu.getName()%></td>
                        <td><%= usu.getDni()%></td>
                        <td><%= usu.getEmail()%></td>
                        <td><%= usu.getPassword()%></td>
                        <td><%= usu.getType()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
    <div id="ModificarModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Ingregar datos</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del usuario que quiere editar:</p>
                    <form action="SvActualizarUsuario" method="GET">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" class="form-control" placeholder="" name="Id_usuario" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Editar</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

    <div id="EliminarModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">¿Estás seguro?</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del usuario que quiere Eliminar:</p>
                    <form action="SvEliminarUsuario" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" class="form-control" placeholder="" name="id_eliminar" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-danger">Eliminar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <a href="#ModificarModal" type="button" class="btn btn-primary" data-toggle="modal">Modificar</a>
    <a href="#EliminarModal" type="button" class="btn btn-danger" data-toggle="modal">Eliminar</a>
</div>

<%@ include file="/include/Admin_footer.jsp" %>

