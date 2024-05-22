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
public class Fecha {
      public List<Integer> getDias() {
        List<Integer> dias = new ArrayList<>();
        for (int i = 1; i <= 31; i++) {
            dias.add(i);
        }
        return dias;
    }

    public List<String> getMeses() {
        List<String> meses = new ArrayList<>();
        meses.add("Enero");
        meses.add("Febrero");
        meses.add("Marzo");
        meses.add("Abril");
        meses.add("Mayo");
        meses.add("Junio");
        meses.add("Julio");
        meses.add("Agosto");
        meses.add("Septiembre");
        meses.add("Octubre");
        meses.add("Noviembre");
        meses.add("Diciembre");
        
        return meses;
    }

    public List<Integer> getAnos() {
        List<Integer> anos = new ArrayList<>();
        anos.add(2023);
        anos.add(2024);
    
        return anos;
    }
}
