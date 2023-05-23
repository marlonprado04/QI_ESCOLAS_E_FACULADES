/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exercicio3;

/**
 *
 * @author marlo
 */
import java.util.Scanner;
import java.util.*;

public class Exercicio3{
    
    public static void main(String args[]){
        
        //Declarando classe Scanner que serve para inputar informação do usuário
        Scanner entrada = new Scanner(System.in);
        
        //Declarando ArrayList de números para a nota
        List<Double> notas = new ArrayList<>();
        
        //Criando variáveis para atribuir as Notas que vão passar para o ArrayList
        double nota1;
        double nota2;
        double nota3;
        
        //Realizando input da 1ª nota do aluno
        System.out.print("Digite a 1ª nota do aluno: ");
        nota1 = entrada.nextDouble();
        
        //Adicionando a 1ª nota ao ArrayList
        notas.add(nota1);
        
        //Realizando input da 2ª nota do aluno
        System.out.print("Digite a 2ª nota do aluno: ");
        nota2 = entrada.nextDouble();
        
        //Adicionando a 2ª nota ao ArrayList
        notas.add(nota2);
        
        //Realizando input da 3ª nota do aluno
        System.out.print("Digite a 3ª nota do aluno: ");
        nota3 = entrada.nextDouble();
        
        //Adicionando a 3ª nota ao ArrayList
        notas.add(nota3);
        
        //Print para separar as informações
        System.out.println("----------------------");
        
        //Imprimindo notas na tela
        System.out.println("As notas informadas foram: " + notas);
        
        //Print para separar as informações
        System.out.println("----------------------");
        

        //Imprimindo a média das notas na tela
        System.out.println("A média das notas é: " + notas.get(0) + notas.get(1) + notas.get(2));
        
    }    
}
