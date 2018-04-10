package oracle.model;

import java.io.Serializable;

public class PortalbiRolreportePK implements Serializable {
    private Long idConfigreporte;
    private Long idConfigrol;

    public PortalbiRolreportePK() {
    }

    public PortalbiRolreportePK(Long idConfigreporte, Long idConfigrol) {
        this.idConfigreporte = idConfigreporte;
        this.idConfigrol = idConfigrol;
    }

    public boolean equals(Object other) {
        if (other instanceof PortalbiRolreportePK) {
            final PortalbiRolreportePK otherPortalbiRolreportePK = (PortalbiRolreportePK) other;
            final boolean areEqual =
                (otherPortalbiRolreportePK.idConfigreporte.equals(idConfigreporte) && otherPortalbiRolreportePK.idConfigrol.equals(idConfigrol));
            return areEqual;
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }

    Long getIdConfigreporte() {
        return idConfigreporte;
    }

    void setIdConfigreporte(Long idConfigreporte) {
        this.idConfigreporte = idConfigreporte;
    }

    Long getIdConfigrol() {
        return idConfigrol;
    }

    void setIdConfigrol(Long idConfigrol) {
        this.idConfigrol = idConfigrol;
    }
}
