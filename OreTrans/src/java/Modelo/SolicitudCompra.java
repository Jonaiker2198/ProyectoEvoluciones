/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author javie
 */
public class SolicitudCompra {
    
    private int id;
    private String nombre_empleado;
    private String nombre_producto;
    private String nombre_tipo;
    private String nombre_categoria;
    private int cantidad_total;
    private double precio_total;
    private String nombre_currier;
    private String nombre_sucursal;
    private String fecha_emision;
    private String fecha_entrega;
    private String estado;

    public SolicitudCompra() {
    }

    public SolicitudCompra(int id, String nombre_empleado, String nombre_producto, String nombre_tipo, String nombre_categoria, int cantidad_total, double precio_total, String nombre_currier, String nombre_sucursal, String fecha_emision, String fecha_entrega, String estado) {
        this.id = id;
        this.nombre_empleado = nombre_empleado;
        this.nombre_producto = nombre_producto;
        this.nombre_tipo = nombre_tipo;
        this.nombre_categoria = nombre_categoria;
        this.cantidad_total = cantidad_total;
        this.precio_total = precio_total;
        this.nombre_currier = nombre_currier;
        this.nombre_sucursal = nombre_sucursal;
        this.fecha_emision = fecha_emision;
        this.fecha_entrega = fecha_entrega;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_empleado() {
        return nombre_empleado;
    }

    public void setNombre_empleado(String nombre_empleado) {
        this.nombre_empleado = nombre_empleado;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getNombre_tipo() {
        return nombre_tipo;
    }

    public void setNombre_tipo(String nombre_tipo) {
        this.nombre_tipo = nombre_tipo;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public void setNombre_categoria(String nombre_categoria) {
        this.nombre_categoria = nombre_categoria;
    }

    public int getCantidad_total() {
        return cantidad_total;
    }

    public void setCantidad_total(int cantidad_total) {
        this.cantidad_total = cantidad_total;
    }

    public double getPrecio_total() {
        return precio_total;
    }

    public void setPrecio_total(double precio_total) {
        this.precio_total = precio_total;
    }

    public String getNombre_currier() {
        return nombre_currier;
    }

    public void setNombre_currier(String nombre_currier) {
        this.nombre_currier = nombre_currier;
    }

    public String getNombre_sucursal() {
        return nombre_sucursal;
    }

    public void setNombre_sucursal(String nombre_sucursal) {
        this.nombre_sucursal = nombre_sucursal;
    }

    public String getFecha_emision() {
        return fecha_emision;
    }

    public void setFecha_emision(String fecha_emision) {
        this.fecha_emision = fecha_emision;
    }

    public String getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(String fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
    
}
