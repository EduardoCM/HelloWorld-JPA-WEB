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

@WebServlet("/update")
public class UpdateController extends HttpServlet {

	
	private static final long serialVersionUID = 5695589569036110978L;

	@Inject
	CustomerDAO customerDAO;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Long id = Long.parseLong(req.getParameter("customerId"));
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String correo = req.getParameter("email");

		System.out.println("Id: " + id);
		System.out.println("Nombre: " + nombre);
		System.out.println("Apellido: " + apellido);
		System.out.println("Correo: " + correo);

		Customer customer = new Customer();
		customer.setCustomerId(id);
		customer.setFirstName(nombre);
		customer.setLastName(apellido);
		customer.setEmail(correo);

		customerDAO.update(customer);
		
		List<Customer> customers = customerDAO.findAllCustomer();
		System.out.println("Customers: " + customers);
		req.setAttribute("customers", customers);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);

	}

}
