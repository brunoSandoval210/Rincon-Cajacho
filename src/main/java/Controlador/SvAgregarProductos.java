/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Controladora;
import Modelo.Productos;
import Modelo.Usuario;
import jakarta.persistence.metamodel.SetAttribute;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvAgregarProductos", urlPatterns={"/SvAgregarProductos"})
public class SvAgregarProductos extends HttpServlet {
    Controladora control=new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Productos> listaProductos = new ArrayList<>();
        listaProductos = control.traerProductos();

        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaProductos", listaProductos);

        response.sendRedirect("tablaProductos.jsp");
        
   
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String codigo=request.getParameter("CodigoProd");
        String nombre=request.getParameter("NombreProd");
        double precio=Double.parseDouble(request.getParameter("PrecioProd"));
        int stock=Integer.parseInt(request.getParameter("StockProd"));
        String imagen=request.getParameter("ImagenProd");
        String descripcion=request.getParameter("DescripcionProd");
        
        
        Productos prod=new Productos();
        prod.setCode(codigo);
        prod.setName(nombre);
        prod.setPrice(precio);
        prod.setStock(stock);
        prod.setImagen(imagen);
        prod.setDescripcion(descripcion);
        control.crearProducto(prod);
        response.sendRedirect("tablaProductos.jsp");
 
        

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
