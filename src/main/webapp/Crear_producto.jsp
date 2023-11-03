
    <%@ include file="include/Admin_header.jsp" %>  

        <div class="container p-5">
            <div class="row">
                <div class="col">
                </div>       
                <form action="SvAgregarProductos" method="POST">
                    <div class="col">
                        <h1>Agregar productos</h1>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">N#</span>
                            <input type="text" class="form-control" placeholder="Código" name="CodigoProd">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Nombre</span>
                            <input type="text" class="form-control" placeholder="Código" name="NombreProd">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text">s/</span>
                            <input type="text" class="form-control" placeholder="Código" name="PrecioProd">

                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text">Stock</span>
                            <input type="text" class="form-control" placeholder="Código" name="StockProd">  
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">imagen</span>
                            <input type="text" class="form-control" placeholder="Ingresa url" name="ImagenProd">

                        </div>

                        <div class="mb-3">
                            <textarea class="form-control" name="DescripcionProd" rows="3" placeholder="Descripcion"></textarea>
                        </div>

                        <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                            <input type="submit" name="btnIngresarProd" value="Ingresar" class="btn btn-danger"/>
                        </div>
                    </div>
                </form>
                <div class="col">

                </div>
            </div>
        </div>

    <%@ include file="include/Admin_footer.jsp" %>