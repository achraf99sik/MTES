package com.mtes.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 * Utility class to manage EntityManagerFactory and EntityManager.
 */
public class JPAUtil {

    private static final String PERSISTENCE_UNIT_NAME = "MTES_PU";
    private static EntityManagerFactory emf;

    static {
        try {
            emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
            System.out.println("EntityManagerFactory initialized successfully.");
        } catch (Exception ex) {
            System.err.println("Failed to initialize EntityManagerFactory: " + ex.getMessage());
            ex.printStackTrace();
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public static void close() {
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
}
