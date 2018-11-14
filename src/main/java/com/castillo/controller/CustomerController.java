package com.castillo.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.castillo.dao.CustomerDAO;
import com.castillo.entity.Customer;


@WebServlet("/customer")
public class CustomerController extends HttpServlet {
	
	@Inject
	CustomerDAO customerDAO;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//action=edit&customerId
		
		String action = req.getParameter("action");
	
	if(action != null) {
	
		Long idCustomer = Long.parseLong(req.getParameter("customerId"));
		
		if(action.equals("delete")) {
		  System.out.println("Eliminar Id: " + idCustomer);
		  customerDAO.deleteCustomerById(idCustomer);
		  
		  List<Customer> customers = customerDAO.findAllCustomer();
			System.out.println("Customers: " + customers);
			req.setAttribute("customers", customers);
		  
		  req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} else if(action.equals("edit")) {
			System.out.println("id a modificar: " + idCustomer);
			
			Customer customer = customerDAO.findCustomerById(idCustomer);
			
			req.setAttribute("customer", customer);
			req.setAttribute("idCustomer", idCustomer);
			req.getRequestDispatcher("/edit.jsp").forward(req, resp);
		}
	} else {
		List<Customer> customers = customerDAO.findAllCustomer();
		System.out.println("Customers: " + customers);
		req.setAttribute("customers", customers);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
	
	
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(":::::: Entro a Customer controller por POST :::::");
	
		
		String nombre    = req.getParameter("nombre");
		String apellido  = req.getParameter("apellido");
		String email     = req.getParameter("email"); 	
		Customer customer = new Customer();
		customer.setFirstName(nombre);
		customer.setLastName(apellido);
		customer.setEmail(email);
		
		customerDAO.insertCustomer(customer);
		
		List<Customer> customers = customerDAO.findAllCustomer();
		System.out.println("Customers: " + customers);
		req.setAttribute("customers", customers);
		
		
		req.getRequestDispatcher("/index.jsp").forward(req, resp);;
		
	
	}

}
