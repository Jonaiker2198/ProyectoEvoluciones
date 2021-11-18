/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Empleados;

import Modelo.Persona;
import java.util.List;

/**
 *
 * @author javie
 */
public interface Validar {
    
    
    public int Autentificar(Persona p);
    public int AutentificarUser(Persona p);
    public int Registrar(Persona p);
    public List<Persona> Mostrar();
    public List<Persona> MostrarId(Persona p);
    public int Eliminar(Persona p);
    public int Editar(Persona p);
    public List<Persona> Buscar(String buscar);
    
}
