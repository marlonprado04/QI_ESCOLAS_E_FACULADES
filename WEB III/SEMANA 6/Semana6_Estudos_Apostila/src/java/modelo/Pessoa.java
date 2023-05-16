/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author marlo
 */
public class Pessoa {
    
    String nome;
    String cpf;
    public Pessoa (int aInt, String nome, String cpf){
        this.nome = nome;
        this.cpf = cpf;
    }
    
    public Pessoa(){ 
        
    }
    
    public String getNome(){
        return nome;
    }
    
    public void setNome (String nome){
        this.nome = nome;
    }
    
    public String getCpf(){
        return cpf;
    }
    
    public void setCpf (String cpf){
        this.cpf = cpf;
    }
    
    @Override
    public String toString(){
        return "Nome: " + nome + ", CPF: "+cpf;
    
    }
        
    
    
    
    
}
