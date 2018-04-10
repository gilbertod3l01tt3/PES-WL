package oracle.model;

import java.util.List;

import javax.ejb.Stateless;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless(name = "POFacade", mappedName = "PortalOBEE-Model-POFacade")
public class POFacadeBean implements POFacade, POFacadeLocal {
    @PersistenceContext(unitName="Model")
    private EntityManager em;

    public POFacadeBean() {
    }

    public Object queryByRange(String jpqlStmt, int firstResult,
                               int maxResults) {
        Query query = em.createQuery(jpqlStmt);
        if (firstResult > 0) {
            query = query.setFirstResult(firstResult);
        }
        if (maxResults > 0) {
            query = query.setMaxResults(maxResults);
        }
        return query.getResultList();
    }

    public PortalbiRolreporte persistPortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        em.persist(portalbiRolreporte);
        return portalbiRolreporte;
    }

    public PortalbiRolreporte mergePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        return em.merge(portalbiRolreporte);
    }

    public void removePortalbiRolreporte(PortalbiRolreporte portalbiRolreporte) {
        portalbiRolreporte = em.find(PortalbiRolreporte.class, new PortalbiRolreportePK(portalbiRolreporte.getIdConfigreporte(), portalbiRolreporte.getIdConfigrol()));
        em.remove(portalbiRolreporte);
    }

    /** <code>select o from PortalbiRolreporte o</code> */
    public List<PortalbiRolreporte> getPortalbiRolreporteFindAll() {
        return em.createNamedQuery("PortalbiRolreporte.findAll").getResultList();
    }

    public PortalbiConfigreporte persistPortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte) {
        em.persist(portalbiConfigreporte);
        return portalbiConfigreporte;
    }

    public PortalbiConfigreporte mergePortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte) {
        return em.merge(portalbiConfigreporte);
    }

    public void removePortalbiConfigreporte(PortalbiConfigreporte portalbiConfigreporte) {
        portalbiConfigreporte = em.find(PortalbiConfigreporte.class, portalbiConfigreporte.getIdConfigreporte());
        em.remove(portalbiConfigreporte);
    }

    /** <code>select o from PortalbiConfigreporte o</code> */
    public List<PortalbiConfigreporte> getPortalbiConfigreporteFindAll() {
        return em.createNamedQuery("PortalbiConfigreporte.findAll").getResultList();
    }

    public PortalbiConfigrol persistPortalbiConfigrol(PortalbiConfigrol portalbiConfigrol) {
        em.persist(portalbiConfigrol);
        return portalbiConfigrol;
    }

    public PortalbiConfigrol mergePortalbiConfigrol(PortalbiConfigrol portalbiConfigrol) {
        return em.merge(portalbiConfigrol);
    }

    public void removePortalbiConfigrol(PortalbiConfigrol portalbiConfigrol) {
        portalbiConfigrol = em.find(PortalbiConfigrol.class, portalbiConfigrol.getIdConfigrol());
        em.remove(portalbiConfigrol);
    }

    /** <code>select o from PortalbiConfigrol o</code> */
    public List<PortalbiConfigrol> getPortalbiConfigrolFindAll() {
        return em.createNamedQuery("PortalbiConfigrol.findAll").getResultList();
    }

    public PortalbiConfigobiee persistPortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee) {
        em.persist(portalbiConfigobiee);
        return portalbiConfigobiee;
    }

    public PortalbiConfigobiee mergePortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee) {
        return em.merge(portalbiConfigobiee);
    }

    public void removePortalbiConfigobiee(PortalbiConfigobiee portalbiConfigobiee) {
        portalbiConfigobiee = em.find(PortalbiConfigobiee.class, portalbiConfigobiee.getIdConfigobiee());
        em.remove(portalbiConfigobiee);
    }

    /** <code>select o from PortalbiConfigobiee o</code> */
    public List<PortalbiConfigobiee> getPortalbiConfigobieeFindAll() {
        return em.createNamedQuery("PortalbiConfigobiee.findAll").getResultList();
    }


}
