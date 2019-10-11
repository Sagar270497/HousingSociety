package com.societymanagement.DaoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.societymanagement.Dao.MemberDao;
import com.societymanagement.Entity.Admin;
import com.societymanagement.Entity.Member;
@Service
public class MemberImpl implements MemberDao {

	@Autowired
	private EntityManager entityManager;

	public List<Member> allMember() {
		entityManager.getTransaction().begin();
		List<Member> member = new ArrayList<Member>();
		member = entityManager.createQuery("select e from Member e").getResultList();
		entityManager.getTransaction().commit();
		return member;
	}

	public boolean addMember(Member member) {
		entityManager.getTransaction().begin();
		entityManager.persist(member);
		entityManager.getTransaction().commit();
		return true;
	}

	public boolean updateMember(Member member, int memberId) {
		entityManager.getTransaction().begin();
		entityManager.find(Member.class, memberId);
		entityManager.merge(member);
		entityManager.getTransaction().commit();
		return true;
	}

	public boolean deleteMember(int memberId) {
		Member member = null;
		entityManager.getTransaction().begin();
		member = entityManager.find(Member.class, memberId);
		entityManager.remove(member);
		entityManager.getTransaction().commit();
		return true;
	}

	public Member getMember(int memberId) {
		Member member = null;
		entityManager.getTransaction().begin();
		member = entityManager.find(Member.class, memberId);
		entityManager.getTransaction().commit();
        return member;
	}

	public List<Member> MemberListById(int societyId) {
		entityManager.getTransaction().begin();
		List<Member> member = new ArrayList<Member>();
		Query query = entityManager.createQuery(
				"SELECT e FROM Member e WHERE e.societyId = " + societyId );
		member = (List<Member>) query.getResultList();
		entityManager.getTransaction().commit();
		return member;
	}

}
