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
  @NamedQuery(name = "PortalbiConfigrol.findAll", query = "select o from PortalbiConfigrol o")  
})
@Table(name = "PORTALBI_CONFIGROL")
public class PortalbiConfigrol implements Serializable {
    @Id
    @Column(name="ID_CONFIGROL", nullable = false)
    private Long idConfigrol;
    @Column(length = 120)
    private String nombre;
    @Column(length = 500)
    private String parametro;
    @OneToMany(mappedBy = "portalbiConfigrol")
    private List<PortalbiRolreporte> portalbiRolreporteList;

    public PortalbiConfigrol() {
    }

    public PortalbiConfigrol(Long idConfigrol, String nombre,
                             String parametro) {
        this.idConfigrol = idConfigrol;
        this.nombre = nombre;
        this.parametro = parametro;
    }

    public Long getIdConfigrol() {
        return idConfigrol;
    }

    public void setIdConfigrol(Long idConfigrol) {
        this.idConfigrol = idConfigrol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getParametro() {
        return parametro;
    }

    public void setParametro(String parametro) {
        this.parametro = parametro;
    }

    public List<PortalbiRolreporte> getPortalbiRolreporteList() {
        return portalbiRolreporteList;
    }

    public void setPortalbiRolreporteList(List<PortalbiRolreporte> portalbiRolreporteList) {
        this.portalbiRolreporteList = portalbiRolreporteList;
    }

    public PortalbiRolreporte addPortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        getPortalbiRolreporteList().add(portalbiRolreporte);
        portalbiRolreporte.setPortalbiConfigrol(this);
        return portalbiRolreporte;
    }

    public PortalbiRolreporte removePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        getPortalbiRolreporteList().remove(portalbiRolreporte);
        portalbiRolreporte.setPortalbiConfigrol(null);
        return portalbiRolreporte;
    }
}
