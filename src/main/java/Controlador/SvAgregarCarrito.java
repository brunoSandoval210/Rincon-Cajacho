/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Controladora;
import Modelo.Productos;
import Modelo.ProductosVenta;
import jakarta.persistence.metamodel.SetAttribute;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bruno Sandoval
 */
@WebServlet(name = "SvAgregarCarrito", urlPatterns={"/SvAgregarCarrito"})
public class SvAgregarCarrito extends HttpServlet {
    Controladora control=new Controladora();
    List<Productos> listaProductos = new ArrayList<>();
    Productos prod=new Productos();
    
    List<ProductosVenta> listaCarrito = new ArrayList<>();
    int item;
    double totalPagar=0.0;
    int cantidad=1;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int idp = Integer.parseInt(request.getParameter("id"));
        prod = control.traerProducto(idp);
        item = item + 1;
        ProductosVenta prodV = new ProductosVenta();
        prodV.setItem(prod.getId());
        prodV.setName(prod.getName());
        prodV.setPrice(prod.getPrice());
        prodV.setImagen(prod.getImagen());
        prodV.setDescripcion(prod.getDescripcion());
        prodV.setStock(cantidad);
        prodV.setSubtotal(cantidad * prod.getPrice());
        control.crearProductoCarrito(prodV);
        request.setAttribute("contador", listaCarrito.size());
        response.sendRedirect("Productos.jsp");

        
    }

  




    
}
