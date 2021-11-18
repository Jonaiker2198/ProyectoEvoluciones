/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Modelo.Conexion;
import Modelo.Empleados.Validar;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javie
 */
public class PersonaDAO extends Conexion implements Validar{

    
    @Override
    public int Autentificar(Persona p) {
        int r=0;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "SELECT *FROM empleados where correo=? and password=sha1(?) and rol='admi'";
        try {
            pst = getConection().prepareStatement(sql);
            pst.setString(1, p.getCorreo());
            pst.setString(2, p.getPassword());
            rs = pst.executeQuery();
            
            while(rs.next()){
                r=r+1;
                p.setCorreo(rs.getString("correo"));
                p.setPassword(rs.getString("password"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return r;
    }
    
    @Override
    public int AutentificarUser(Persona p) {
        int r=0;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "SELECT *FROM empleados where correo=? and password=sha1(?) and rol='user'";
        try {
            pst = getConection().prepareStatement(sql);
            pst.setString(1, p.getCorreo());
            pst.setString(2, p.getPassword());
            rs = pst.executeQuery();
            
            while(rs.next()){
                r=r+1;
                p.setCorreo(rs.getString("correo"));
                p.setPassword(rs.getString("password"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return r;
    }
    
    @Override
    public int Registrar(Persona p) {
        int r=0;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "INSERT INTO empleados(id_sucursal,nombre,apellidos,dni,nacimiento,telefono,correo,password,rol,foto) VALUE(?,?,?,?,?,?,?,sha1(?),?,?)";
        try {
            pst = getConection().prepareStatement(sql);
            pst.setInt(1, p.getId_sucursal());
            pst.setString(2, p.getNombre());
            pst.setString(3, p.getApellidos());
            pst.setString(4, p.getDni());
            pst.setString(5, p.getNacimiento());
            pst.setString(6, p.getTelefono());
            pst.setString(7, p.getCorreo());
            pst.setString(8, p.getPassword());
            pst.setString(9, p.getRol());
            pst.setBlob(10, p.getFoto());
           
            r = pst.executeUpdate();
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
        return r;
    }
    
    @Override
    public List<Persona> Mostrar(){
        PreparedStatement pst;
        ResultSet rs;
        List<Persona> lista = new ArrayList();
        String sql = "SELECT e.*, s.nombre AS 'nombre_sucursal' FROM empleados e\n" +
                    "INNER JOIN sucursal s ON e.id_sucursal = s.id order by e.id asc";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Persona p = new Persona();
                p.setId(rs.getInt("id"));
                p.setId_sucursal(rs.getInt("id_sucursal"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setDni(rs.getString("dni"));
                p.setNacimiento(rs.getString("nacimiento"));
                p.setTelefono(rs.getString("telefono"));
                p.setCorreo(rs.getString("correo"));
                p.setPassword(rs.getString("password"));
                p.setRol(rs.getString("rol"));
                p.setFoto(rs.getBinaryStream("foto"));
                p.setNombre_sucursal(rs.getString("nombre_sucursal"));
                lista.add(p);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    public void ListarImg(int id, HttpServletResponse response){
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select *from empleados where id="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream=response.getOutputStream();
            pst = getConection().prepareStatement(sql);
            rs=pst.executeQuery();
            if(rs.next()){
                inputStream = rs.getBinaryStream("foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            
            while((i=bufferedInputStream.read()) != -1){
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
    
    @Override
    public List<Persona> MostrarId(Persona p){
        PreparedStatement pst;
        ResultSet rs;
        List<Persona> lista = new ArrayList();
        String sql = "SELECT e.*, s.nombre AS 'nombre_sucursal' FROM empleados e\n" +
            "INNER JOIN sucursal s ON e.id_sucursal = s.id where e.id=?";
        
        try { 
            pst = getConection().prepareCall(sql);
            pst.setInt(1, p.getId());
            rs = pst.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setDni(rs.getString("dni"));
                p.setNacimiento(rs.getString("nacimiento"));
                p.setTelefono(rs.getString("telefono"));
                p.setCorreo(rs.getString("correo"));
                p.setPassword(rs.getString("password"));
                p.setRol(rs.getString("rol"));
                p.setFoto(rs.getBinaryStream("foto"));
                p.setNombre_sucursal(rs.getString("nombre_sucursal"));
                lista.add(p);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
    @Override
    public int Eliminar(Persona p){
        int r=0;
        PreparedStatement pst;
        String sql="DELETE FROM empleados where id=?";
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
    
    @Override
    public int Editar(Persona p) {
        int r=0;
        PreparedStatement pst;
        ResultSet rs ;
        String sql="UPDATE empleados SET nombre=?, apellidos=?, dni=?, nacimiento=?, telefono=?, correo=?, password=?, rol=? WHERE id=?";
        try {
            pst = getConection().prepareStatement(sql);
            rs = pst.executeQuery();
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
        return r;
    }
    
    @Override
    public List Buscar(String buscar){
        List<Persona> lista = new ArrayList<>();
        PreparedStatement pst;
        ResultSet rs;
        String sql = "SELECT *FROM empleados where id like '%"+buscar+"%' or nombre like '%"+buscar+"%' or apellidos like '%"+buscar+"%' or dni like '%"+buscar+"%'";
        try { 
            pst = getConection().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Persona p = new Persona();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setDni(rs.getString("dni"));
                p.setNacimiento(rs.getString("nacimiento"));
                p.setTelefono(rs.getString("telefono"));
                p.setCorreo(rs.getString("correo"));
                p.setPassword(rs.getString("password"));
                p.setRol(rs.getString("rol"));
                p.setFoto(rs.getBinaryStream("foto"));
                lista.add(p);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
        return lista;
    }
    
    
}
