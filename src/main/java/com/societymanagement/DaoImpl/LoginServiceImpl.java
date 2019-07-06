package com.societymanagement.DaoImpl;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.societymanagement.Entity.Admin;
@Service
public class LoginServiceImpl {
	
	@Autowired
	EntityManager entityManager;

	public Admin checkAdminLogin(String adminId, String password) {
		entityManager.getTransaction().begin();

		Query query = entityManager.createQuery(
				"SELECT e FROM Admin e WHERE e.adminId = '" + adminId + "' AND " + "e.adminPassword = '" + password + "'");
		Admin admin = (Admin) query.getSingleResult();
		if (admin == null) {
			entityManager.close();
			return admin;
		
		}
		entityManager.getTransaction().commit();
		return admin;
	}

}
