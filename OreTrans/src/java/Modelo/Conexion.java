/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Javier Galarza
 */
public class Conexion {
    
    Connection cnx=null;
    Statement sta=null;
    ResultSet rs=null;
            
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/oretrans?user=root&password");     
            System.err.println("Bueno");
        }catch(Exception e){ 
            System.err.println("Error"+e);
        }  
    }

    public Connection getConection(){
        return cnx;
    }
         
    public static void main(String [] args){
        Conexion con = new Conexion();
    }
}
