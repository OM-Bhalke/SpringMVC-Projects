package aepl.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import aepl.dto.AeplDto;

@Component
public class AeplDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev2");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(AeplDto aeplDto) {
		entityTransaction.begin();
		entityManager.persist(aeplDto);
		entityTransaction.commit();
	}

}
