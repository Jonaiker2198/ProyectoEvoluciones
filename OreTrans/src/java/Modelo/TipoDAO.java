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
public class TipoDAO extends Conexion{
    
    public List<Tipo> MostrarCat(){
        PreparedStatement pst;
        ResultSet rs;
        List<Tipo> lista = new ArrayList();
        String sql = "SELECT *FROM tipo";
        
        try { 
            pst = getConection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Tipo c = new Tipo();
                c.setId(rs.getInt("id"));
                c.setNombre(rs.getString("nombre"));
                lista.add(c);
            }
        } catch (Exception e) {
             System.err.println(e);
        }
             
       return lista;
    }
    
}
