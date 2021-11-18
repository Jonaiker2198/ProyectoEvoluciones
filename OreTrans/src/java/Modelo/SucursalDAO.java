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
public class SucursalDAO extends Conexion{
    
    public List<Sucursal> Listar(){
        PreparedStatement pst;
        ResultSet rs;
        List<Sucursal> lista = new ArrayList();
        String sql = "SELECT *FROM sucursal";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Sucursal pv = new Sucursal();
                pv.setId(rs.getInt("id"));
                pv.setNombre(rs.getString("nombre"));
                pv.setDireccion(rs.getString("direccion"));
                pv.setTelefono(rs.getString("telefono"));
                pv.setCorreo(rs.getString("correo"));
                lista.add(pv);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    public List<Sucursal> MostrarId(Sucursal pv){
        PreparedStatement pst;
        ResultSet rs;
        List<Sucursal> lista = new ArrayList();
        String sql = "SELECT *FROM sucursal where id=?";
        
        try { 
            pst = getConection().prepareCall(sql);
            pst.setInt(1, pv.getId());
            rs = pst.executeQuery();
            while(rs.next()){
                pv.setId(rs.getInt("id"));
                pv.setNombre(rs.getString("nombre"));
                pv.setDireccion(rs.getString("direccion"));
                pv.setTelefono(rs.getString("telefono"));
                pv.setCorreo(rs.getString("correo"));
                lista.add(pv);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    public void Agregar(Sucursal pv){
        PreparedStatement pst;
        String sql = "INSERT INTO sucursal(nombre,direccion,telefono,correo) VALUE(?,?,?,?)";
        try {
            pst = getConection().prepareCall(sql);
            pst.setString(1, pv.getNombre());
            pst.setString(2, pv.getDireccion());
            pst.setString(3, pv.getTelefono());
            pst.setString(4, pv.getCorreo());
            pst.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }
        
    public int Eliminar(Sucursal p){
        int r=0;
        PreparedStatement pst;
        String sql="DELETE FROM sucursal where id=?";
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
