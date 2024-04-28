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
public class Cita {
    private static List<Cita> listaDeCitas = new ArrayList<>();

    private String fecha;
    private String hora;
    private String nombrePaciente;
    private String apPat;
    private String apMat;
    private String Motivo;

    public Cita(String fecha, String hora, String nombrePaciente, String apPat, String apMat, String Motivo) {
        this.fecha = fecha;
        this.hora = hora;
        this.nombrePaciente = nombrePaciente;
        this.apPat = apPat;
        this.apMat = apMat;
        this.Motivo = Motivo;
    }

    public static List<Cita> getListaDeCitas() {
        return listaDeCitas;
    }

    public static void setListaDeCitas(List<Cita> listaDeCitas) {
        Cita.listaDeCitas = listaDeCitas;
    }
    public static void agregarCita(Cita cita) {
        listaDeCitas.add(cita);
    }
 
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getNombrePaciente() {
        return nombrePaciente;
    }

    public void setNombrePaciente(String nombrePaciente) {
        this.nombrePaciente = nombrePaciente;
    }

    public String getApPat() {
        return apPat;
    }

    public void setApPat(String apPat) {
        this.apPat = apPat;
    }

    public String getApMat() {
        return apMat;
    }

    public void setApMat(String apMat) {
        this.apMat = apMat;
    }

    public String getMotivo() {
        return Motivo;
    }

    public void setMotivo(String Motivo) {
        this.Motivo = Motivo;
    }
    
}