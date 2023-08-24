/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author marlo
 */

import java.util.Scanner;
import java.util.*;
   

public class CalculaMedia{
    
    public static void main(String args[]){
        
        //Declarando classe Scanner que serve para inputar informação do usuário
        Scanner entrada = new Scanner(System.in);
        
        //Declarando ArrayList de números para a nota
        List<Double> notas = new ArrayList<Double>();
        
       
        for (int i =0; i<4; i++){
            
            //Realizando input das notas do aluno
            System.out.print("Digite a " + (i+1) + "ª nota do aluno: ");
            double nota = entrada.nextDouble();
            
            //Adicionando a nota ao ArrayList
            notas.add(nota);
        
        }
        
        //Imprimindo notas na tela
        System.out.println("As notas informadas foram: " + notas);
        
        //Pulando uma linha para deixar o código mais legível
        System.out.println();
        
        //Criando variável para média
        double media = (notas.get(0) + notas.get(1) + notas.get(2) + notas.get(3)) / 4 ;
        
        //Imprimindo média para usuário
        System.out.println("A média das notas informadas é: " + media);
        
        }
       
}
