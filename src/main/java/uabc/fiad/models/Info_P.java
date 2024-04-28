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
public class Info_P {

    private String nombre;
    private int edad;
    private String apPaterno;
    private String apMaterno;
    private String sexo;
    private String N_Med;
    private String descripcion;
    private String estadoSalud;

    public Info_P(String nombre, int edad, String apPaterno, String apMaterno, String sexo, String N_Med, String descripcion, String estadoSalud) {
        this.nombre = nombre;
        this.edad = edad;
        this.apPaterno = apPaterno;
        this.apMaterno = apMaterno;
        this.sexo = sexo;
        this.N_Med = N_Med;
        this.descripcion = descripcion;
        this.estadoSalud = estadoSalud;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
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

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getN_Med() {
        return N_Med;
    }

    public void setN_Med(String N_Med) {
        this.N_Med = N_Med;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstadoSalud() {
        return estadoSalud;
    }

    public void setEstadoSalud(String estadoSalud) {
        this.estadoSalud = estadoSalud;
    }
    
    // Método para buscar un paciente por nombre
    public static List<Paciente> buscarPorNombre(List<Paciente> pacientes, String nombreBuscado) {
        List<Paciente> resultados = new ArrayList<>();
        for (Paciente paciente : pacientes) {
            if (paciente.getNombre().equalsIgnoreCase(nombreBuscado)) {
                resultados.add(paciente);
            }
        }
        return resultados;
    }
}
