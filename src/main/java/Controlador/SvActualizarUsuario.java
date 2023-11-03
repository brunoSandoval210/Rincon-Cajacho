/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Controladora;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bruno Sandoval
 */
@WebServlet(name = "SvActualizarUsuario", urlPatterns = {"/SvActualizarUsuario"})
public class SvActualizarUsuario extends HttpServlet {
    Controladora control=new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int id_editar=Integer.parseInt(request.getParameter("Id_usuario"));
        Usuario usu=control.traerUsuario(id_editar);
        
        HttpSession misesion=request.getSession();
        misesion.setAttribute("usuEditar", usu);
        
        response.sendRedirect("Usuario_modificar.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre=request.getParameter("txtNombre");
        String dni=request.getParameter("txtDNI");
        String email=request.getParameter("txtCorreo");
        String contrasena=request.getParameter("txtContrasena");
        String tipo=request.getParameter("txtTipo");
        
        
        Usuario usu=(Usuario)request.getSession().getAttribute("usuEditar");
        usu.setPassword(contrasena);
        usu.setDni(dni);
        usu.setName(nombre);
        usu.setEmail(email);
        usu.setType(tipo);
        
        control.editarUsuario(usu);
        response.sendRedirect("Usuario_modificar.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
