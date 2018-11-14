package com.castillo.dao;

import java.util.List;

import javax.ejb.Local;

import com.castillo.entity.Customer;

@Local
public interface CustomerDAO {
	
	public List<Customer> findAllCustomer();
	
	void insertCustomer(Customer customer);
	
	Customer findCustomerById(Long id);
	
    void deleteCustomerById(Long id);
    
    void update(Customer customer);

}
