<%@ include file="/include/Admin_header.jsp" %>
<%@page import="Modelo.Contacto"%>

<div class="container-fluid">
    <h1 class="mt-5" style="text-align: center">Tabla Mensajes</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generar Reporte</a>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>CORREO</th>
                        <th>MENSAJE</th>
                        <th>ACCIÓN</th>
                    </tr>
                </thead>
                <tbody>
                    <%  List<Contacto> listaContactos = (List) request.getSession().getAttribute("listaContactos");
                        for (Contacto cont : listaContactos) {
                    %>
                    <tr>
                        <th><%= cont.getId()%></th>
                        <td><%= cont.getNombre()%></td>
                        <td><%= cont.getCorreo()%></td>
                        <td><%= cont.getMensaje()%></td>
                        <td><a href="#Modal" type="button" class="btn btn-danger" data-toggle="modal">Eliminar</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>

    <div id="Modal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">¿Estás seguro?</h4>
                </div>
                <div class="modal-body">
                    <p>Ingrese la id del mensaje que quiere Eliminar:</p>
                    <form action="SvEliminarMensaje" method="POST">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">ID</span>
                            <input type="text" class="form-control"  name="id_eliminar" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-danger">Eliminar</button>

                        </div>
                </div>
                </form>
            </div>

        </div>
        </div>
    </div>
</div>

<%@ include file="/include/Admin_footer.jsp" %>
