package com.tgc.ihm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tgc.dao.UserDAO;
import com.tgc.dao.TgcConnection;


@WebServlet("/addUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession( true ); 

		
		String login = (String) session.getAttribute("login");
		String email = (String) session.getAttribute("email");
		String password = (String) session.getAttribute("password");
		String localisation = (String) session.getAttribute("localisation");
		
		if ( login == null) session.setAttribute("login", "");
		if ( email == null) session.setAttribute("email", "");
		if ( password == null) session.setAttribute("pass", "");
		if ( localisation == null) session.setAttribute("localisation", "");
		
		
		request.getRequestDispatcher("signinUser.jsp").forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String login = request.getParameter("txtLogin");
		String email = request.getParameter("txtEmail");
		String password = request.getParameter("txtPassword");
		String localisation = request.getParameter("txtLocalisation");
		
		if(UserDAO.isValidUser(login, email, password, localisation)) {
			
			if(UserDAO.createUser(login, email, password, localisation)) {
				
				request.getRequestDispatcher("profilUserView").forward(request, response);
				
			} else {
				request.setAttribute("msg", "Erreur de connection");
				doGet(request, response);
			}
			
		} else {		
			
			request.setAttribute("msg", "Champs incorrect");
			request.setAttribute("login", login);
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			request.setAttribute("localisation", localisation);
		}
	}

}
