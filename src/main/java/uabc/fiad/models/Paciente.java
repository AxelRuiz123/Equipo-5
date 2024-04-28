/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uabc.fiad.models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sayo1
 */
public class Paciente {

    private String nombre, usuario, password, correo, fecha, apPaterno, apMaterno, curp, N_Medico, sexo, estadoSalud;
    private int id, edad, celular;

    public Paciente() {
    }

    public Paciente(String nombre, String usuario, String password, String correo, String fecha, int id, int edad, String apPaterno,
                    String apMaterno, String curp, int celular, String N_Medico, String sexo, String estadoSalud) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.password = password;
        this.correo = correo;
        this.fecha = fecha;
        this.id = id;
        this.edad = edad;
        this.apMaterno = apMaterno;
        this.apPaterno = apPaterno;
        this.curp = curp;
        this.celular = celular;
        this.N_Medico = N_Medico;
        this.sexo = sexo;
        this.estadoSalud = estadoSalud;
    }
    
    public static List<Paciente> buscarPorNombre(List<Paciente> todosLosPacientes, String nombreBuscado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
  

    public Paciente(String string, int i, String string0, String string1, String string2, String string3, String string4, String string5, String string6, Object object, String string7) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Paciente(String nombre, String usuario, String password, String correo, int edad, String string, String string0, String string1, int i, String string2, String string3, String string4) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getApPaterno() {
        return apPaterno;
    }

    public void setApPaterno(String apPaterno) {
        this.apPaterno = apPaterno;
    }

    public String getApMaterno() {
        return apMaterno;
    }

    public void setApMaterno(String apMaterno) {
        this.apMaterno = apMaterno;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public String getN_Medico() {
        return N_Medico;
    }

    public void setN_Medico(String N_Medico) {
        this.N_Medico = N_Medico;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstadoSalud() {
        return estadoSalud;
    }

    public void setEstadoSalud(String estadoSalud) {
        this.estadoSalud = estadoSalud;
    }

    
   
    public static ArrayList<Paciente> inicializarPacientes() {
        ArrayList<Paciente> pacienteArray = new ArrayList();
        // Crea una instancia del objeto Usuarios y define los valores
        Paciente paciente = new Paciente();
        paciente.setId(1);
        paciente.setNombre("Sayonara");
        paciente.setUsuario("mags_P");
        paciente.setPassword("123456");
        paciente.setCorreo("mags_P@meditec.com");
        paciente.setFecha("03/06/00");
        pacienteArray.add(paciente); 

        pacienteArray.add(new Paciente("Iliana", "iliana_P", "123", "iliana@uabc", "11/12/23", 1, 21, "AP", "AM", "AAAA", 2222, "Dr. Gabriela", "Femenino", "Estable"));
        pacienteArray.add(new Paciente("Santiago", "santi_P", "1234", "santi@uabc", "15/12/23", 2, 21, "AP", "AM", "SSS", 3333, "Dr. Ana", "Masculino", "Estable"));

        return pacienteArray;
    }
     
     public static Paciente validaPacientes(String usuario, String pass) {
        ArrayList<Paciente> pacientes = inicializarPacientes();
        for (Paciente u : pacientes) {
            if (u.getUsuario().equals(usuario) && u.getPassword().equals(pass)) {
                System.out.println("Usuario encontrado");
                return u;
            }
        }
        return null;
    }
     
    public static Paciente iniciaSesion(String clave, String pwd) {
        ArrayList<Paciente> pacientes = inicializarPacientes();
        for (Paciente m : pacientes) {
            if (m.getCorreo().equals(clave) && m.getPassword().equals(pwd)) {
                return m;
            }
        }
        return null;
    }
     
 
 
 public static ArrayList<Paciente> consultaPacientes() {
        ArrayList<Paciente> users = inicializarPacientes();
        System.out.println("usuarios " + users);
        return users;
    }
 
  public static void agregarNuevoPaciente(String nombre, int edad, String usuario, String correo, String password) {
        // Obtener la lista actual de pacientes
    ArrayList<Paciente> pacientes = inicializarPacientes();

    // Crear una nueva instancia de Paciente con los parámetros proporcionados
    Paciente nuevoPaciente = new Paciente();
    nuevoPaciente.setNombre(nombre);
    nuevoPaciente.setEdad(edad);
    nuevoPaciente.setUsuario(usuario);
    nuevoPaciente.setCorreo(correo);
    nuevoPaciente.setPassword(password);

    // Agregar el nuevo paciente a la lista
    pacientes.add(nuevoPaciente);
    }

  public static void agregarPaciente(Paciente nuevoPaciente) {
    ArrayList<Paciente> pacientes = inicializarPacientes();
    pacientes.add(nuevoPaciente);
}

}
