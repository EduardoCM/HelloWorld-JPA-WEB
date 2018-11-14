package com.castillo.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import com.castillo.entity.Customer;

@Stateless
public class CustomerDAOImpl implements CustomerDAO {

	@PersistenceContext(unitName = "CustomerPU")
	EntityManager em;
	
	@Override
	public List<Customer> findAllCustomer() {
		return em.createNamedQuery("Customer.findAll").getResultList();
	}

	public void insertCustomer(Customer customer) {
		em.persist(customer);
	}

	public Customer findCustomerById(Long id) {
		return em.find(Customer.class, id);
	}

	public void deleteCustomerById(Long id) {
		Customer customer = em.find(Customer.class, id);
		em.remove(customer);
	}

	public void update(Customer customer) {
		em.merge(customer);
	}

	

}
