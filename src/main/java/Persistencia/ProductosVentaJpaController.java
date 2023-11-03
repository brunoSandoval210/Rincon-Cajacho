/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Modelo.ProductosVenta;
import Persistencia.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Bruno Sandoval
 */
public class ProductosVentaJpaController implements Serializable {

    public ProductosVentaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    public ProductosVentaJpaController() {
        emf= Persistence.createEntityManagerFactory("RinconCajachoPU");
    }

    public void create(ProductosVenta productosVenta) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(productosVenta);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(ProductosVenta productosVenta) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            productosVenta = em.merge(productosVenta);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = productosVenta.getId();
                if (findProductosVenta(id) == null) {
                    throw new NonexistentEntityException("The productosVenta with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            ProductosVenta productosVenta;
            try {
                productosVenta = em.getReference(ProductosVenta.class, id);
                productosVenta.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The productosVenta with id " + id + " no longer exists.", enfe);
            }
            em.remove(productosVenta);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<ProductosVenta> findProductosVentaEntities() {
        return findProductosVentaEntities(true, -1, -1);
    }

    public List<ProductosVenta> findProductosVentaEntities(int maxResults, int firstResult) {
        return findProductosVentaEntities(false, maxResults, firstResult);
    }

    private List<ProductosVenta> findProductosVentaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(ProductosVenta.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public ProductosVenta findProductosVenta(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(ProductosVenta.class, id);
        } finally {
            em.close();
        }
    }

    public int getProductosVentaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<ProductosVenta> rt = cq.from(ProductosVenta.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
