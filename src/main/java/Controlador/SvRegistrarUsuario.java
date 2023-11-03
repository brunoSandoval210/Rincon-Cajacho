/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Controladora;
import Modelo.Usuario;
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

@WebServlet(name = "SvRegistrarUsuario", urlPatterns={"/SvRegistrarUsuario"})
public class SvRegistrarUsuario extends HttpServlet {
    Controladora control=new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        
        List<Usuario> listaUsuarios =new ArrayList <>();
        listaUsuarios=control.traerUsuarios();
        
        HttpSession misesion=request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        
        response.sendRedirect("Login.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre=request.getParameter("txtNombre");
        String dni=request.getParameter("txtDNI");
        String email=request.getParameter("txtCorreo");
        String contrasena=request.getParameter("txtContrasena");
        
        
        Usuario usu=new Usuario();
        usu.setPassword(contrasena);
        usu.setDni(dni);
        usu.setName(nombre);
        usu.setEmail(email);
        control.crearUsuario(usu);
        response.sendRedirect("Login.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
