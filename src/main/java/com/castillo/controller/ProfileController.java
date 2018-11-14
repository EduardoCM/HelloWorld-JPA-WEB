package com.castillo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/profile")
public class ProfileController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String profile = "Menssage desde ProfileCOntroller";
		System.out.println("Profile: " + profile);
		
		req.setAttribute("profile", profile);
		
		req.getRequestDispatcher("/profile.jsp").forward(req, resp);
		
	}
}
