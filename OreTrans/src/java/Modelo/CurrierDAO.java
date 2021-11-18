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
public class CurrierDAO extends Conexion{
    
    public List<Currier> Listar(){
        PreparedStatement pst;
        ResultSet rs;
        List<Currier> lista = new ArrayList();
        String sql = "SELECT *FROM currier";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Currier pv = new Currier();
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
    
    public List<Currier> MostrarId(Currier pv){
        PreparedStatement pst;
        ResultSet rs;
        List<Currier> lista = new ArrayList();
        String sql = "SELECT *FROM currier where id=?";
        
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
    
    public void Agregar(Currier pv){
        PreparedStatement pst;
        String sql = "INSERT INTO currier(razon_social,ruc,telefono,direccion,correo,representante) VALUE(?,?,?,?,?,?)";
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
    
    public void Modificar(Currier pv) {
        PreparedStatement pst;
        String sql="update currier set razon_social=?, ruc=?, telefono=?, direccion=?, correo=?, representante=? where id=?";
        try {
            pst = getConection().prepareStatement(sql);
            pst.executeUpdate();
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
    }

    
    public int Eliminar(Currier p){
        int r=0;
        PreparedStatement pst;
        String sql="DELETE FROM currier where id=?";
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
    
    
    public List<Currier> RandonId(int p){
        PreparedStatement pst;
        ResultSet rs;
        List<Currier> lista = new ArrayList();
        Currier pv = null;
        String sql = "SELECT *FROM currier where id=?";
        
        try { 
            pst = getConection().prepareCall(sql);
            pst.setInt(1, p);
            rs = pst.executeQuery();
            while(rs.next()){
                pv = new Currier();
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
    
    public List<Currier> Cantidad(){
        PreparedStatement pst;
        ResultSet rs;
        List<Currier> lista = new ArrayList();
        String sql = "select count(*) as cantidad from currier";
        try {
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Currier pv = new Currier();
                pv.setCantidad(rs.getInt("cantidad"));
                lista.add(pv);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return lista;
    }
    
    
    
}
