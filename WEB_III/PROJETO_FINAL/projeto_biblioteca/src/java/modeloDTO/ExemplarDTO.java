package modeloDTO;

public class ExemplarDTO {

    private int id;
    private int idLivro;
    private int numeroDoExemplar;
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdLivro() {
        return idLivro;
    }

    public void setIdLivro(int idLivro) {
        this.idLivro = idLivro;
    }

    public int getNumeroDoExemplar() {
        return numeroDoExemplar;
    }

    public void setNumeroDoExemplar(int numeroDoExemplar) {
        this.numeroDoExemplar = numeroDoExemplar;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
