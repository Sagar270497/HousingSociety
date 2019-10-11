package com.societymanagement.DaoImpl;

import javax.persistence.EntityManager;
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
		Query query = entityManager.createQuery("SELECT e FROM Admin e WHERE e.adminId = '" + adminId + "' AND "
				+ "e.adminPassword = '" + password + "'");
		try {
			Admin admin = (Admin) query.getSingleResult();
			return admin;
			
		} catch (Exception e) {
		
			return null;
			
		} finally {
			entityManager.getTransaction().commit();

		}
	}

	public boolean changeAdminPwd(Admin admin, String adminId) {
		 Admin admin1 = entityManager.find(Admin.class,adminId);
		 entityManager.getTransaction().begin();
		 admin1.setAdminPassword(admin.getAdminPassword());
		entityManager.getTransaction().commit();
		return true;
	}

	
}
