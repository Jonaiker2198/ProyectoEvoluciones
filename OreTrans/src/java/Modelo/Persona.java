/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.InputStream;

/**
 *
 * @author javie
 */
public class Persona {
    
    private int id;
    private int id_sucursal;
    private String nombre;
    private String apellidos;
    private String dni;
    private String nacimiento;
    private String telefono;
    private String correo;
    private String password;
    private String rol;
    InputStream foto;
    private String nombre_sucursal;
    
  
    public Persona() {
    }

    public Persona(int id, int id_sucursal, String nombre, String apellidos, String dni, String nacimiento, String telefono, String correo, String password, String rol, InputStream foto, String nombre_sucursal) {
        this.id = id;
        this.id_sucursal = id_sucursal;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.dni = dni;
        this.nacimiento = nacimiento;
        this.telefono = telefono;
        this.correo = correo;
        this.password = password;
        this.rol = rol;
        this.foto = foto;
        this.nombre_sucursal = nombre_sucursal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_sucursal() {
        return id_sucursal;
    }

    public void setId_sucursal(int id_sucursal) {
        this.id_sucursal = id_sucursal;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(String nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public String getNombre_sucursal() {
        return nombre_sucursal;
    }

    public void setNombre_sucursal(String nombre_sucursal) {
        this.nombre_sucursal = nombre_sucursal;
    }

    

}
