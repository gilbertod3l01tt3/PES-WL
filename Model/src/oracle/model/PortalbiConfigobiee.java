package oracle.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
  @NamedQuery(name = "PortalbiConfigobiee.findAll", query = "select o from PortalbiConfigobiee o")
})
@Table(name = "PORTALBI_CONFIGOBIEE")
public class PortalbiConfigobiee implements Serializable {
    @Id
    @Column(name="ID_CONFIGOBIEE", nullable = false)
    private Long idConfigobiee;
    @Column(length = 120)
    private String parametro;
    @Column(length = 120)
    private String valor;

    public PortalbiConfigobiee() {
    }

    public PortalbiConfigobiee(Long idConfigobiee, String parametro,
                               String valor) {
        this.idConfigobiee = idConfigobiee;
        this.parametro = parametro;
        this.valor = valor;
    }

    public Long getIdConfigobiee() {
        return idConfigobiee;
    }

    public void setIdConfigobiee(Long idConfigobiee) {
        this.idConfigobiee = idConfigobiee;
    }

    public String getParametro() {
        return parametro;
    }

    public void setParametro(String parametro) {
        this.parametro = parametro;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }
}
