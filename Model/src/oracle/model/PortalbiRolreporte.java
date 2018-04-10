package oracle.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
  @NamedQuery(name = "PortalbiRolreporte.findAll", query = "select o from PortalbiRolreporte o")
})
@Table(name = "PORTALBI_ROLREPORTE")
@IdClass(PortalbiRolreportePK.class)
public class PortalbiRolreporte implements Serializable {
    @Id
    @Column(name="ID_CONFIGREPORTE", nullable = false, insertable = false,
            updatable = false)
    private Long idConfigreporte;
    @Id
    @Column(name="ID_CONFIGROL", nullable = false, insertable = false,
            updatable = false)
    private Long idConfigrol;
    @Column(length = 120)
    private String nombredespliegue;
    private Long ordendespliegue;
    @Column(length = 120)
    private String pagina;
    @Column(length = 120)
    private String parametromandatorio;
    @Column(length = 120)
    private String parametronulo;
    @Column(length = 120)
    private String parametroopcional;
    @ManyToOne
    @JoinColumn(name = "ID_CONFIGROL")
    private PortalbiConfigrol portalbiConfigrol;
    @ManyToOne
    @JoinColumn(name = "ID_CONFIGREPORTE")
    private PortalbiConfigreporte portalbiConfigreporte;

    public PortalbiRolreporte() {
    }

    public PortalbiRolreporte(PortalbiConfigreporte portalbiConfigreporte,
                              PortalbiConfigrol portalbiConfigrol,
                              String nombredespliegue, Long ordendespliegue,
                              String pagina, String parametromandatorio,
                              String parametronulo, String parametroopcional) {
        this.portalbiConfigreporte = portalbiConfigreporte;
        this.portalbiConfigrol = portalbiConfigrol;
        this.nombredespliegue = nombredespliegue;
        this.ordendespliegue = ordendespliegue;
        this.pagina = pagina;
        this.parametromandatorio = parametromandatorio;
        this.parametronulo = parametronulo;
        this.parametroopcional = parametroopcional;
    }

    public Long getIdConfigreporte() {
        return idConfigreporte;
    }

    public void setIdConfigreporte(Long idConfigreporte) {
        this.idConfigreporte = idConfigreporte;
    }

    public Long getIdConfigrol() {
        return idConfigrol;
    }

    public void setIdConfigrol(Long idConfigrol) {
        this.idConfigrol = idConfigrol;
    }

    public String getNombredespliegue() {
        return nombredespliegue;
    }

    public void setNombredespliegue(String nombredespliegue) {
        this.nombredespliegue = nombredespliegue;
    }

    public Long getOrdendespliegue() {
        return ordendespliegue;
    }

    public void setOrdendespliegue(Long ordendespliegue) {
        this.ordendespliegue = ordendespliegue;
    }

    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }

    public String getParametromandatorio() {
        return parametromandatorio;
    }

    public void setParametromandatorio(String parametromandatorio) {
        this.parametromandatorio = parametromandatorio;
    }

    public String getParametronulo() {
        return parametronulo;
    }

    public void setParametronulo(String parametronulo) {
        this.parametronulo = parametronulo;
    }

    public String getParametroopcional() {
        return parametroopcional;
    }

    public void setParametroopcional(String parametroopcional) {
        this.parametroopcional = parametroopcional;
    }

    public PortalbiConfigrol getPortalbiConfigrol() {
        return portalbiConfigrol;
    }

    public void setPortalbiConfigrol(PortalbiConfigrol portalbiConfigrol) {
        this.portalbiConfigrol = portalbiConfigrol;
        if (portalbiConfigrol != null) {
            this.idConfigrol = portalbiConfigrol.getIdConfigrol();
        }
    }

    public PortalbiConfigreporte getPortalbiConfigreporte() {
        return portalbiConfigreporte;
    }

    public void setPortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte) {
        this.portalbiConfigreporte = portalbiConfigreporte;
        if (portalbiConfigreporte != null) {
            this.idConfigreporte = portalbiConfigreporte.getIdConfigreporte();
        }
    }
}
