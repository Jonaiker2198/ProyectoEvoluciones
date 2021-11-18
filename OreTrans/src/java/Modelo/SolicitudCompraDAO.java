/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javie
 */
public class SolicitudCompraDAO extends Conexion{
    
     public void Agregar(SolicitudCompra s){
        PreparedStatement pst;
        String sql = "INSERT INTO solicitud_productos(nombre_empleado,nombre_producto,nombre_tipo,nombre_categoria,cantidad_total,precio_total,nombre_currier,nombre_sucursal,fecha_emision,fecha_entrega) VALUE(?,?,?,?,?,?,?,?,?,?)";
        try {
            pst = getConection().prepareCall(sql);
            pst.setString(1, s.getNombre_empleado());
            pst.setString(2, s.getNombre_producto());
            pst.setString(3, s.getNombre_tipo());
            pst.setString(4, s.getNombre_categoria());
            pst.setInt(5, s.getCantidad_total());
            pst.setDouble(6, s.getPrecio_total());
            pst.setString(7, s.getNombre_currier());
            pst.setString(8, s.getNombre_sucursal());
            pst.setString(9, s.getFecha_emision());
            pst.setString(10, s.getFecha_entrega());
            pst.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }
     
     public List<SolicitudCompra> Listar(){
        PreparedStatement pst;
        ResultSet rs;
        List<SolicitudCompra> lista = new ArrayList();
        String sql = "SELECT *FROM solicitud_productos";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                SolicitudCompra s = new SolicitudCompra();
                s.setId(rs.getInt("id"));
                s.setNombre_empleado(rs.getString("nombre_empleado"));
                s.setNombre_producto(rs.getString("nombre_producto"));
                s.setNombre_tipo(rs.getString("nombre_tipo"));
                s.setNombre_categoria(rs.getString("nombre_categoria"));
                s.setCantidad_total(rs.getInt("cantidad_total"));
                s.setPrecio_total(rs.getInt("precio_total"));
                s.setNombre_currier(rs.getString("nombre_currier"));
                s.setNombre_sucursal(rs.getString("nombre_sucursal"));
                s.setFecha_emision(rs.getString("fecha_emision"));
                s.setFecha_entrega(rs.getString("fecha_entrega"));
                s.setEstado(rs.getString("estado"));
                lista.add(s);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
     
     public List<SolicitudCompra> ListarCliente(String correo){
        PreparedStatement pst;
        ResultSet rs;
        List<SolicitudCompra> lista = new ArrayList();
        String sql = "SELECT *FROM solicitud_productos where nombre_empleado=?";
        
        try { 
            pst = getConection().prepareCall(sql);
            pst.setString(1, correo);
            rs = pst.executeQuery();
            while(rs.next()){
                SolicitudCompra s = new SolicitudCompra();
                s.setId(rs.getInt("id"));
                s.setNombre_empleado(rs.getString("nombre_empleado"));
                s.setNombre_producto(rs.getString("nombre_producto"));
                s.setNombre_tipo(rs.getString("nombre_tipo"));
                s.setNombre_categoria(rs.getString("nombre_categoria"));
                s.setCantidad_total(rs.getInt("cantidad_total"));
                s.setPrecio_total(rs.getInt("precio_total"));
                s.setNombre_currier(rs.getString("nombre_currier"));
                s.setNombre_sucursal(rs.getString("nombre_sucursal"));
                s.setFecha_emision(rs.getString("fecha_emision"));
                s.setFecha_entrega(rs.getString("fecha_entrega"));
                s.setEstado(rs.getString("estado"));
                lista.add(s);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
     
    
    
}
