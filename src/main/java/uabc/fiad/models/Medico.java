/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uabc.fiad.models;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author kevin
 */
public class Medico implements Serializable{

  
    private String nombre, usuario, password, correo, cedula;
    private int id, edad;

    public Medico() {
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public Medico(String nombre, String usuario, String password, int id, String correo, int edad, String cedula) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.password = password;
        this.correo = correo;
        this.cedula = cedula;
        this.id = id;
        this.edad = edad;
    }
     public static ArrayList<Medico> inicializarMedicos() {
        ArrayList<Medico> medicoArray = new ArrayList();
        // Crea una instancia del objeto Usuarios y define los valores
        Medico medico = new Medico();
        medico.setId(1);
        medico.setNombre("David");
        medico.setUsuario("david");
        medico.setPassword("123");
        medico.setCorreo("david@uabc");
        medicoArray.add(medico); 

        medicoArray.add(new Medico("Sara", "sarita", "123", 2, "sara@uabc", 21, "SAR"));

        medicoArray.add(new Medico("Sayonara", "sayo", "123", 3, "sayonara@uabc", 23, "SAYO"));

        return medicoArray;
    }
     
     public static Medico validaMedicos(String usuario, String pass) {
        // inicializa el listado de usuarios
        ArrayList<Medico> medico = inicializarMedicos();
        // por cada elemento del arreglo
        for (Medico u : medico) {
            // verifica si el usuario y password coinciden con el elemento del arreglo
            if (u.getUsuario().equals(usuario) && u.getPassword().equals(pass)) {
                System.out.println("Usuario encontrado");
                return u;
            }
        }
        return null;
    }
     
     public static Medico iniciaSesion(String clave, String pwd) {
        ArrayList<Medico> med = inicializarMedicos();
        for (Medico m : med) {
            if (m.getCorreo().equals(clave) && m.getPassword().equals(pwd)) {
                return m;
            }
        }
        return null;
    }
     
 public static void agregarMedicos(ArrayList<Medico> medicos, String nombre, String usuario, String password, String correo, int edad, String cedula) {
    Medico nuevoMedico = new Medico(nombre, usuario, password, medicos.size() + 1, correo, edad, cedula);
    medicos.add(nuevoMedico);
 }

public static ArrayList<Medico> consultaMedicos(){
        ArrayList<Medico> users = new ArrayList();
        users = inicializarMedicos(); 
        System.out.println("usuarios " + users);
        return users;
    }
}