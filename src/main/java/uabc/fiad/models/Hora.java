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
public class Hora {
    public List<String> getHoras() {
        List<String> horas = new ArrayList<>();
        for (int i = 0; i <= 23; i++) {
            String hora = String.format("%02d:00", i);
            horas.add(hora);
        }
        return horas;
    }
}