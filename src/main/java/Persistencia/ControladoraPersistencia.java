/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Modelo.*;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControladoraPersistencia {
    UsuarioJpaController usuJpa=new UsuarioJpaController();
    ProductosJpaController prodJpa=new ProductosJpaController();
    ContactoJpaController contaJPA = new ContactoJpaController();
    ProductosVentaJpaController prodVJpa=new ProductosVentaJpaController();
    
    //Operacion CREATE
    public void crearUsuario(Usuario usu){
        usuJpa.create(usu);
    }
    
    //Operacion READ
    
    public List <Usuario> traerUsuarios(){
        return usuJpa.findUsuarioEntities();
    }
    
    

    public void borrarUsuario(int id_eliminar) {
         try {
            usuJpa.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
             Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE,null,ex);
        }
    }

    public Usuario traerUsuario(int id_editar) {
        return usuJpa.findUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJpa.edit(usu);
        } catch (Exception ex) {
             Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    public void crearProducto(Productos prod){
        prodJpa.create(prod);
    }
    
    public List <Productos> traerProductos(){
        return prodJpa.findProductosEntities();
    }

    public void borrarProducto(int id_eliminar) {
        try {
            prodJpa.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
             Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE,null,ex);
        }
    }

    public Productos traerProducto(int id_editar) {
        return prodJpa.findProductos(id_editar);
    }

    public void editarProducto(Productos prod) {
        try {
            prodJpa.edit(prod);
        } catch (Exception ex) {
             Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE,null,ex);
        }
        
    }

    public void crearContacto(Contacto conta) {
        contaJPA.create(conta);
    }
    public List<Contacto> traerContactos(){
        return contaJPA.findContactoEntities();
    }
    
    public Contacto traerContacto(int id_editar) {
        return contaJPA.findContacto(id_editar);
    }
    
    public void borrarContacto(int id_eliminar) {
        try {
            contaJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearProductoCarrito(ProductosVenta prodV) {
        prodVJpa.create(prodV);
    }
    
    public List <ProductosVenta> traerProductosCarrito(){
        return prodVJpa.findProductosVentaEntities();
    }

    public void borrarProductoCarrito(int id_eliminar) {
        try {
            prodVJpa.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
             Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
}
