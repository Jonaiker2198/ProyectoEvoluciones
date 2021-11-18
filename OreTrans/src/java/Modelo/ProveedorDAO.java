/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Modelo.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javie
 */
public class ProveedorDAO extends Conexion{
    
    public List<Proveedor> Listar(){
        PreparedStatement pst;
        ResultSet rs;
        List<Proveedor> lista = new ArrayList();
        String sql = "SELECT *FROM proveedores";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Proveedor pv = new Proveedor();
                pv.setId(rs.getInt("id"));
                pv.setRazon_social(rs.getString("razon_social"));
                pv.setRuc(rs.getString("ruc"));
                pv.setTelefono(rs.getString("telefono"));
                pv.setDireccion(rs.getString("direccion"));
                pv.setCorreo(rs.getString("correo"));
                pv.setRepresentante(rs.getString("representante"));
                lista.add(pv);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    public List<Proveedor> MostrarId(Proveedor pv){
        PreparedStatement pst;
        ResultSet rs;
        List<Proveedor> lista = new ArrayList();
        String sql = "SELECT *FROM proveedores where id=?";
        
        try { 
            pst = getConection().prepareCall(sql);
            pst.setInt(1, pv.getId());
            rs = pst.executeQuery();
            while(rs.next()){
                pv.setId(rs.getInt("id"));
                pv.setRazon_social(rs.getString("razon_social"));
                pv.setRuc(rs.getString("ruc"));
                pv.setTelefono(rs.getString("telefono"));
                pv.setDireccion(rs.getString("direccion"));
                pv.setCorreo(rs.getString("correo"));
                pv.setRepresentante(rs.getString("representante"));
                lista.add(pv);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    public void Agregar(Proveedor pv){
        PreparedStatement pst;
        String sql = "INSERT INTO proveedores(razon_social,ruc,telefono,direccion,correo,representante) VALUE(?,?,?,?,?,?)";
        try {
            pst = getConection().prepareCall(sql);
            pst.setString(1, pv.getRazon_social());
            pst.setString(2, pv.getRuc());
            pst.setString(3, pv.getTelefono());
            pst.setString(4, pv.getDireccion());
            pst.setString(5, pv.getCorreo());
            pst.setString(6, pv.getRepresentante());
            pst.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }
    
    public void Modificar(Proveedor pv) {
        PreparedStatement pst;
        String sql="update proveedores set razon_social=?, ruc=?, telefono=?, direccion=?, correo=?, representante=? where id=?";
        try {
            pst = getConection().prepareStatement(sql);
            pst.executeUpdate();
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
    }

    
    public int Eliminar(Proveedor p){
        int r=0;
        PreparedStatement pst;
        String sql="DELETE FROM proveedores where id=?";
        try{
            pst = getConection().prepareCall(sql);
            pst.setInt(1, p.getId());
            r = pst.executeUpdate();
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
        return r;
    } 
    
}
