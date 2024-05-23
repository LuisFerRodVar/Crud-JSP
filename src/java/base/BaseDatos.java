/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package base;

import java.util.ArrayList;
import modelo.Persona;

/**
 *
 * @author LuisFer
 */
public class BaseDatos {
    private ArrayList<Persona> personas;
    private static BaseDatos singleton = new BaseDatos();
    
    private BaseDatos(){
        personas = new ArrayList();
    }
    public static BaseDatos getInstance(){
        return singleton;
    }
    public void agregarPersona(String nombre, String cedula, String animal){
        personas.add(new Persona(nombre, cedula, animal));
    }
    public void eliminarPersona(String cedula){
        for(int i = 0; i < personas.size(); i ++){
            if(personas.get(i).getCedula().equals(cedula)){
                personas.remove(i);
                return;
            }
        }
    }
    public String listarPersonas(){
        String resultado = "";
        for(int i = 0; i < personas.size(); i ++){
            Persona actual = personas.get(i);
            resultado += "%" + actual.getNombre() + ";" + actual.getCedula() + ";" + actual.getAnimal();
        }
        return resultado.substring(1);
    }
    public Persona obtenerPersona(String cedula){
        for(Persona persona: personas){
            if(persona.getCedula().equals(cedula)){
                return persona;
            }
        }
        return null;
    }
    public void editarPersona(String cedula, String nombre, String animal){
        Persona persona = obtenerPersona(cedula);
        persona.setNombre(nombre);
        persona.setAnimal(animal);
    }
   
}
