package oracle.model;

import java.io.Serializable;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@NamedQueries({
  @NamedQuery(name = "PortalbiConfigreporte.findAll", query = "select o from PortalbiConfigreporte o")
})
@Table(name = "PORTALBI_CONFIGREPORTE")
public class PortalbiConfigreporte implements Serializable {
    private Long estatus;
    @Id
    @Column(name="ID_CONFIGREPORTE", nullable = false)
    private Long idConfigreporte;
    @Column(length = 120)
    private String nombre;
    @Column(length = 120)
    private String panel;
    @Column(length = 500)
    private String parametro;
    @Column(length = 120)
    private String path;
    @OneToMany(mappedBy = "portalbiConfigreporte")
    private List<PortalbiRolreporte> portalbiRolreporteList;

    public PortalbiConfigreporte() {
    }

    public PortalbiConfigreporte(Long estatus, Long idConfigreporte,
                                 String nombre, String panel, String parametro,
                                 String path) {
        this.estatus = estatus;
        this.idConfigreporte = idConfigreporte;
        this.nombre = nombre;
        this.panel = panel;
        this.parametro = parametro;
        this.path = path;
    }

    public Long getEstatus() {
        return estatus;
    }

    public void setEstatus(Long estatus) {
        this.estatus = estatus;
    }

    public Long getIdConfigreporte() {
        return idConfigreporte;
    }

    public void setIdConfigreporte(Long idConfigreporte) {
        this.idConfigreporte = idConfigreporte;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPanel() {
        return panel;
    }

    public void setPanel(String panel) {
        this.panel = panel;
    }

    public String getParametro() {
        return parametro;
    }

    public void setParametro(String parametro) {
        this.parametro = parametro;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public List<PortalbiRolreporte> getPortalbiRolreporteList() {
        return portalbiRolreporteList;
    }

    public void setPortalbiRolreporteList(List<PortalbiRolreporte> portalbiRolreporteList) {
        this.portalbiRolreporteList = portalbiRolreporteList;
    }

    public PortalbiRolreporte addPortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        getPortalbiRolreporteList().add(portalbiRolreporte);
        portalbiRolreporte.setPortalbiConfigreporte(this);
        return portalbiRolreporte;
    }

    public PortalbiRolreporte removePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        getPortalbiRolreporteList().remove(portalbiRolreporte);
        portalbiRolreporte.setPortalbiConfigreporte(null);
        return portalbiRolreporte;
    }
}
