/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

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
public class ProductoDAO extends Conexion{
    
     public int Registrar(Producto p) {
        int r=0;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "INSERT INTO productos(id_tipo,id_categoria,nombre,descripcion,precio,stock,foto) VALUE(?,?,?,?,?,?,?)";
        try {
            pst = getConection().prepareStatement(sql);
            pst.setInt(1, p.getId_tipo());
            pst.setInt(2, p.getId_categoria());
            pst.setString(3, p.getNombre());
            pst.setString(4, p.getDescripcion());
            pst.setDouble(5, p.getPrecio());
            pst.setInt(6, p.getStock());
            pst.setBlob(7, p.getFoto());
            
            r = pst.executeUpdate();
        }
        catch(Exception e){
            System.err.println("Error: "+e);
        }
        return r;
    }
     
     public List<Producto> Mostrar(){
        PreparedStatement pst;
        ResultSet rs;
        List<Producto> lista = new ArrayList();
        String sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                        "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                        "INNER JOIN tipo t ON p.id_tipo = t.id";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Producto pr = new Producto();
                pr.setId(rs.getInt("id"));
                pr.setId_categoria(rs.getInt("id_categoria"));
                pr.setId_tipo(rs.getInt("id_tipo"));
                pr.setNombre(rs.getString("nombre"));
                pr.setDescripcion(rs.getString("descripcion"));
                pr.setPrecio(rs.getDouble("precio"));
                pr.setStock(rs.getInt("stock"));
                pr.setFoto(rs.getBinaryStream("foto"));
                pr.setNombre_tipo(rs.getString("nombre_tipo"));
                pr.setNombre_categoria(rs.getString("nombre_categoria"));
                lista.add(pr);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
     
     public List<Producto> MostrarId(Producto pr){
        PreparedStatement pst;
        ResultSet rs;
        List<Producto> lista = new ArrayList();
        String sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                        "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                        "INNER JOIN tipo t ON p.id_tipo = t.id where p.id=?";
        try { 
            pst = getConection().prepareCall(sql);
            pst.setInt(1, pr.getId());
            rs = pst.executeQuery();
            while(rs.next()){
                pr.setId(rs.getInt("id"));
                pr.setId_categoria(rs.getInt("id_categoria"));
                pr.setId_tipo(rs.getInt("id_tipo"));
                pr.setNombre(rs.getString("nombre"));
                pr.setDescripcion(rs.getString("descripcion"));
                pr.setPrecio(rs.getDouble("precio"));
                pr.setStock(rs.getInt("stock"));
                pr.setFoto(rs.getBinaryStream("foto"));
                pr.setNombre_tipo(rs.getString("nombre_tipo"));
                pr.setNombre_categoria(rs.getString("nombre_categoria"));
                lista.add(pr);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
       return lista;
    }
     
     public List<Producto> ListarP(int ca, int ma){
        PreparedStatement pst;
        ResultSet rs;
        List<Producto> lista = new ArrayList();
        Producto pr = null;
        String sql = "";
        if(ca == 0 && ma == 0){
            sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                    "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                    "INNER JOIN tipo t ON p.id_tipo = t.id";
        }else{
            if(ca>0 && ma>0){
                sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                        "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                        "INNER JOIN tipo t ON p.id_tipo = t.id where p.id_tipo=? and p.id_categoria=?";
            }else{
                if(ca>0){
                    sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                            "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                            "INNER JOIN tipo t ON p.id_tipo = t.id where p.id_tipo=?";
                }else{
                    sql = "SELECT p.*, t.nombre AS 'nombre_tipo', c.nombre AS 'nombre_categoria' FROM productos p\n" +
                            "INNER JOIN categoria c ON p.id_categoria = c.id\n" +
                            "INNER JOIN tipo t ON p.id_tipo = t.id where p.id_categoria=?";
                }
            }
        }
        try { 
            pst = getConection().prepareCall(sql);
            if(ca == 0 && ma == 0){
               // sql = "select *from productos";
            }else{
                if(ca>0 && ma>0){
                    pst.setInt(1, ca);
                    pst.setInt(2, ma);
                }else{
                    if(ca>0){
                        pst.setInt(1, ca);
                    }else{
                        pst.setInt(1, ma);
                    }
                }
                sql = "select *from productos";
            }
            rs = pst.executeQuery();
            while(rs.next()){
                pr = new Producto();
                pr.setId(rs.getInt("id"));
                pr.setId_categoria(rs.getInt("id_categoria"));
                pr.setId_tipo(rs.getInt("id_tipo"));
                pr.setNombre(rs.getString("nombre"));
                pr.setDescripcion(rs.getString("descripcion"));
                pr.setPrecio(rs.getDouble("precio"));
                pr.setStock(rs.getInt("stock"));
                pr.setFoto(rs.getBinaryStream("foto"));
                pr.setNombre_tipo(rs.getString("nombre_tipo"));
                pr.setNombre_categoria(rs.getString("nombre_categoria"));
                lista.add(pr);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
       return lista;
    }
    
     public void ListarImgs(int id, HttpServletResponse response){
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select *from productos where id="+id;
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
     
     
    public int Eliminar(Producto p){
        int r=0;
        PreparedStatement pst;
        String sql="DELETE FROM productos where id=?";
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
     
    
    public List Buscar(String buscar){
        List<Producto> lista = new ArrayList<>();
        PreparedStatement pst;
        ResultSet rs;
        String sql = "SELECT *FROM productos where nombre like '%"+buscar+"%'";
        try { 
            pst = getConection().prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Producto pr = new Producto();
                pr.setId(rs.getInt("id"));
                pr.setId_categoria(rs.getInt("id_categoria"));
                pr.setId_tipo(rs.getInt("id_tipo"));
                pr.setNombre(rs.getString("nombre"));
                pr.setDescripcion(rs.getString("descripcion"));
                pr.setPrecio(rs.getDouble("precio"));
                pr.setStock(rs.getInt("stock"));
                pr.setFoto(rs.getBinaryStream("foto"));
                pr.setNombre_tipo(rs.getString("nombre_tipo"));
                pr.setNombre_categoria(rs.getString("nombre_categoria"));
                lista.add(pr);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
        return lista;
    }
     
}
