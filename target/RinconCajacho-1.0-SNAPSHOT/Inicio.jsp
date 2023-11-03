<%-- 
    Document   : Inicio
    Created on : 30 jun 2023, 23:15:04
    Author     : Bruno Sandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@include file="include/general_header.jsp" %> 

        <div class="text-center mx-auto">
            <img src="img/logo.png" class="rounded w-40 logo" alt="...">
        </div>
        <br>
        <br><br>
        <br>
        
        <section id="somos-proya">
            <div class="contenedor">
                <div class="mx-auto"><img src="img/datos-servicios-domicilio.png" class="w-50" alt=""></div> <br>
                <div class="texto">
                    <p class="fs-1 fw-bold"><span class="text-danger">Venta</span> a domicilio</p>
                    <ol class="list list-group-numbered">
                        <li class="list-group-item fs-5 fw-bold">Realiza tus pedidos <span class="text-danger">(*)</span></li>
                        <p class="fw-lighter">Lunes a Sábado de 08:30 am a 01:00 pm </p>
                        <li class="list-group-item fs-5 fw-bold">Costo de reparto S/5.00</li>
                        <p class="fw-lighter">Envío gratis por compras mayores a S/ 60.00</p>
                        <li class="list-group-item fs-5 fw-bold">Modalidades de pago</li>
                        <p class="fw-lighter">Los pagos podrán ser en efectivo o por transferencia bancaria Vía BCP o YAPE
                        </p>
                        <li class="list-group-item fs-5 fw-bold">Recibe tu pedido en la puerta de tu casa</li>
                        <p class="fw-lighter">Pedido mínimo de S/ 40.00 </p>
                    </ol>
                </div>
            </div>
        </section>

        <section>
            <p class="fs-1 fw-bold text-center"><span class="text-danger">Nuestros</span> productos</p><br><br>

            <div class="row mx-auto col-md-8 g-0 col-sm-10">
                <div class="card mx-auto" style="width: 18rem;">
                    <img src="https://www.quesostradicion.com/img/products/quesoandino.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title fw-bold">Andino</h5>
                        <p class="card-text fs-6 fw-lighter">El queso Andino es originario de los andes peruanos. Mantecoso, de pasta
                            suave y graso, de color amarillo.</p>
                        <a href="Productos.jsp"><button type="button" class="btn btn-outline-danger rounded-pill">Ver
                                más</button></a>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <img src="https://www.quesostradicion.com/img/products/edam.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title fw-bold">Edam</h5>
                        <p class="card-text fs-6 fw-lighter">Es un queso de pasta semidura, prensada y lisa. El Edam suave se puede
                            comer acompañado de frutas.</p>
                        <a href="Productos.jsp"><button type="button" class="btn btn-outline-danger rounded-pill">Ver
                                más</button></a>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <img src="https://www.quesostradicion.com/img/products/paria.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title fw-bold fw-lighter">Paria</h5>
                        <p class="card-text fs-6">El queso Paria un queso semiduro preparado con leche de vaca, propio del altiplano y
                            la zona sur del Perú.</p>
                        <a href="Productos.jsp"><button type="button" class="btn btn-outline-danger rounded-pill">Ver
                                más</button></a>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <img src="https://www.quesostradicion.com/img/products/quesofresco.jpg" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title fw-bold">Queso fresco</h5>
                        <p class="card-text fs-6 fw-lighter">El queso Fresco es un producto que contiene menor cantidad de grasa, sal
                            y un tono blanquesino brillante.</p>
                        <a href="Productos.jsp"><button type="button" class="btn btn-outline-danger rounded-pill">Ver
                                más</button></a>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <br><br><br>

        <footer class="bg-dark text-center text-white">
            <div class="container p-5">
                <div class="row">
                    <div class="col">
                        <section id="somos-proya" class="">
                            <div class="contenedor">
                                <div class="texto">
                                    <p class="fs-1 fw-bold">Rincón Cajacho</p>
                                    <p>¡Bienvenidos a nuestro acogedor local en Chorrillos! Ubicado en un punto estratégico de la ciudad, te esperamos de lunes a viernes, desde las 8 am hasta las 6 pm. Disfruta de un ambiente relajado y un servicio excepcional mientras deleitas tu paladar con deliciosas opciones que te harán regresar una y otra vez. ¡Te esperamos para ofrecerte una experiencia inolvidable!</p>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col align-content-end g-0">
                        <iframe class="mapa"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.5651876426027!2d-77.06697182396134!3d-12.073409642399383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c91b08078acf%3A0xb4c816e70c25153e!2sEl%20Rinconcito%20Cajamarquino!5e0!3m2!1ses-419!2spe!4v1685448938943!5m2!1ses-419!2spe"
                                width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>

            <section class="">
                <div class="row">
                </div>
            </section>
        </div>

        <section class="text-center p-3 bg-danger">
            <div class="row d-flex align-items-center">
                <!-- Grid column -->
                <div class="col-md-7 col-lg-8 col-4 text-center text-md-start">
                    <!-- Copyright -->
                    <div class="p-3">
                        © 2020 Copyright:
                        <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                    </div>
                    <!-- Copyright -->
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end">
                    <!-- Facebook -->
                    <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button"><i
                            class="fab fa-facebook-f"></i></a>

                    <!-- Twitter -->
                    <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button"><i
                            class="fab fa-twitter"></i></a>

                    <!-- Google -->
                    <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button"><i
                            class="fab fa-google"></i></a>

                    <!-- Instagram -->
                    <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button"><i
                            class="fab fa-instagram"></i></a>
                </div>
                <!-- Grid column -->
            </div>
        </section>

    </footer>


</body>

</html>