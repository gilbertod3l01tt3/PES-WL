package oracle.model;

import java.util.List;

import javax.ejb.Remote;

@Remote
public interface POFacade {
    Object queryByRange(String jpqlStmt, int firstResult, int maxResults);

    PortalbiRolreporte persistPortalbiRolreporte(PortalbiRolreporte portalbiRolreporte);

    PortalbiRolreporte mergePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte);

    void removePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte);

    List<PortalbiRolreporte> getPortalbiRolreporteFindAll();

    PortalbiConfigreporte persistPortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte);

    PortalbiConfigreporte mergePortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte);

    void removePortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte);

    List<PortalbiConfigreporte> getPortalbiConfigreporteFindAll();

    PortalbiConfigrol persistPortalbiConfigrol(PortalbiConfigrol portalbiConfigrol);

    PortalbiConfigrol mergePortalbiConfigrol(PortalbiConfigrol portalbiConfigrol);

    void removePortalbiConfigrol(PortalbiConfigrol portalbiConfigrol);

    List<PortalbiConfigrol> getPortalbiConfigrolFindAll();

    PortalbiConfigobiee persistPortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee);

    PortalbiConfigobiee mergePortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee);

    void removePortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee);

    List<PortalbiConfigobiee> getPortalbiConfigobieeFindAll();

}
