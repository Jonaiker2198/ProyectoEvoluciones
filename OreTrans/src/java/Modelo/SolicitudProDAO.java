/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javie
 */
public class SolicitudProDAO{
    
    private double total;
    private List<Producto> lista;

    public SolicitudProDAO() {
        total=0;
        lista = new ArrayList();
    }

    public void agregar(Producto p){
        total = total + (p.getStock()*p.getPrecio());
        int pos = buscar(p.getId());
        if(pos <0){
            lista.add(p);
        }else{
            Producto e = lista.get(pos);
            int actual = e.getStock();
            int nuevo = actual+p.getStock();
            e.setStock(nuevo);
            lista.set(pos, e);
        }
    }
    
    public void retirar(int cod){
        int pos= buscar(cod);
        if(pos>=0){
            Producto e = lista.get(pos);
            total = total - (e.getStock()*e.getPrecio());
            lista.remove(pos);
        }
    }
    
    public void disminuir(int cod){
        int pos= buscar(cod);
        int x;
        if(pos>=0){
            Producto e = lista.get(pos);
            x = e.getStock();
            if(x==1){
                retirar(cod);
            }else{
                x=x-1;
                e.setStock(x);
                total = total - e.getPrecio();
            }
        }
    }

    private int buscar(int cod){
        int i = 0;
        int pos=-1;
        for(Producto p:lista){
            if(p.getId()==cod){
                pos=i;
            }
            i++;
        }
        return pos;
    }
    
    
    public double getTotal() {
        return total;
    }

    public List<Producto> getLista() {
        return lista;
    }

    
    
    
}
