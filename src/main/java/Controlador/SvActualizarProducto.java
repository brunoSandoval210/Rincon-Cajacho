/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Controladora;
import Modelo.Productos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SvActualizarProducto extends HttpServlet {
    Controladora control=new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_editar=Integer.parseInt(request.getParameter("id_edit"));
        Productos prod=control.traerProducto(id_editar);
        
        HttpSession misesion=request.getSession();
        misesion.setAttribute("prodEditar", prod);
        
        response.sendRedirect("Productos_modificar.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String codigo=request.getParameter("Codigo");
        String nombre=request.getParameter("Nombre");
        double precio=Double.parseDouble(request.getParameter("Precio"));
        int stock=Integer.parseInt(request.getParameter("Stock"));
        String imagen=request.getParameter("Imagen");
        String descripcion=request.getParameter("Descripcion");
        
        
        Productos prod=(Productos) request.getSession().getAttribute("prodEditar");
        prod.setCode(codigo);
        prod.setName(nombre);
        prod.setPrice(precio);
        prod.setStock(stock);
        prod.setImagen(imagen);
        prod.setDescripcion(descripcion);
        control.editarProducto(prod);
        response.sendRedirect("tablaProductos.jsp");
        
       
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
