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
public class CategoriaDAO extends Conexion{
    
    public List<Categoria> MostrarMar(int cat){
        PreparedStatement pst;
        ResultSet rs;
        List<Categoria> lista = new ArrayList();
        String sql = "";
        if(cat == 0){
            sql = "SELECT *FROM categoria";
        }else{
            sql = "SELECT *FROM categoria where id_tipo=?";
        }
        try { 
            pst = getConection().prepareCall(sql);
            if(cat > 0){
               pst.setInt(1,cat);
            }
            
            rs = pst.executeQuery();
            while(rs.next()){
                Categoria m = new Categoria();
                m.setId(rs.getInt("id"));
                m.setId_tipo(rs.getInt("id_tipo"));
                m.setNombre(rs.getString("nombre"));
                lista.add(m);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
}
