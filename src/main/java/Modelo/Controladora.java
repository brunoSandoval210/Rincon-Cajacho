/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Persistencia.ControladoraPersistencia;
import java.util.List;


public class Controladora {
    ControladoraPersistencia controlPersis=new ControladoraPersistencia();
    
    
    public void crearUsuario(Usuario usu){
        controlPersis.crearUsuario(usu);
    }
    
    public List <Usuario> traerUsuarios(){
        return controlPersis.traerUsuarios();
    }
    
    public void borrarUsuario(int id_eliminar) {
       controlPersis.borrarUsuario(id_eliminar);
    }

    public Usuario traerUsuario(int id_editar) {
        return controlPersis.traerUsuario(id_editar);
    }

    public void editarUsuario(Usuario usu) {
       controlPersis.editarUsuario(usu);
    }
    public void crearContacto(Contacto conta){
        controlPersis.crearContacto(conta);
    }
    
    public List<Contacto> traerContactos(){
        return controlPersis.traerContactos();
    }
    
    public void borrarContacto(int id_eliminar) {
        controlPersis.borrarContacto(id_eliminar);
    }
    
    public void crearProducto(Productos prod){
        controlPersis.crearProducto(prod);
    }
    public List <Productos> traerProductos(){
        return controlPersis.traerProductos();
    }
    
    public void borrarProducto(int id_eliminar) {
       controlPersis.borrarProducto(id_eliminar);
    }

    public Productos traerProducto(int id_editar) {
        return controlPersis.traerProducto(id_editar);
    }

    public void editarProducto(Productos prod) {
       controlPersis.editarProducto(prod);
    }

    public void crearProductoCarrito(ProductosVenta prodV) {
        controlPersis.crearProductoCarrito(prodV);
    }
    public List <ProductosVenta> traerProductosVentas(){
        return controlPersis.traerProductosCarrito();
    }
    
    public void borrarProductoCarrito(int id_eliminar) {
       controlPersis.borrarProductoCarrito(id_eliminar);
    }




  

    
}
