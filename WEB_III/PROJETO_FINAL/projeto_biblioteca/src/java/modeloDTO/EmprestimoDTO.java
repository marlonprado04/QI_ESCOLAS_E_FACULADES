/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modeloDTO;

import java.sql.Timestamp;

/**
 *
 * @author marlo
 */
public class EmprestimoDTO {
    
    private int id;
    private int idExemplar;
    private int idAluno;
    private Timestamp dataEmprestimo;
    private Timestamp dataDevolucao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdExemplar() {
        return idExemplar;
    }

    public void setIdExemplar(int idExemplar) {
        this.idExemplar = idExemplar;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public Timestamp getDataEmprestimo() {
        return dataEmprestimo;
    }

    public void setDataEmprestimo(Timestamp dataEmprestimo) {
        this.dataEmprestimo = dataEmprestimo;
    }

    public Timestamp getDataDevolucao() {
        return dataDevolucao;
    }

    public void setDataDevolucao(Timestamp dataDevolucao) {
        this.dataDevolucao = dataDevolucao;
    }
    
    
    
}
