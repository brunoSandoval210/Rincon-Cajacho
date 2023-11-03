<%-- 
    Document   : Contactanos
    Created on : 30 jun 2023, 23:11:16
    Author     : Bruno Sandoval
--%>

        <%@include file="include/general_header.jsp" %> 
        <section>
            <div class="container text-center">
                <p class="fs-1 fw-bold">Escríbenos</p>
                <br>
                <br>
                <br>
                <div class="row">
                    <form method="post" action="SvContacto">
                        <div class="mb-3">
                            <input class="form-control" placeholder="Nombres y Apellidos" name="nombre" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="name@example.com" name="correo" required>
                        </div>
                        <div class="mb-3">

                            <textarea class="form-control" rows="9" placeholder="Mensaje" name="mensaje" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-outline-danger">Enviar</button>
                    </form>
                    <div class="col">
                        <div class="mx-auto"><img src="https://www.quesostradicion.com/img/contact.png" class="w-50" alt=""></div> 
                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </section>
        <br><br><br><br>
        <footer class="bg-dark text-center text-white">
            <div class="container p-5 mapita">
                <div class="row">
                    <div class="col">
                        <section id="somos-proya" class="">
                            <div class="contenedor">
                                <div class="texto">
                                    <p class="fs-1 fw-bold">Ubícanos</p>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit veritatis a autem sed dignissimos commodi, voluptas incidunt voluptatibus cum, quia neque nulla consequatur laborum accusamus, perspiciatis odio nemo minus vel!</p>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col align-content-end g-0">
                        <iframe class="mapa" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.5651876426027!2d-77.06697182396134!3d-12.073409642399383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c91b08078acf%3A0xb4c816e70c25153e!2sEl%20Rinconcito%20Cajamarquino!5e0!3m2!1ses-419!2spe!4v1685448938943!5m2!1ses-419!2spe" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        <%@include file="include/general_footer.jsp" %> 
