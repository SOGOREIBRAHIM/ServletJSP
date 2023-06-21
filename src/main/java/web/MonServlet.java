package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserBean;

/**
 * Servlet implementation class MonServlet
 */
@WebServlet("/inscrire")
public class MonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
//		session.invalidate();
//		response.sendRedirect("inscrire.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//	    List des utilisateur
		List<UserBean> userList = new ArrayList<>();
//		recuperation des donnees jsp
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String pseudo = request.getParameter("pseudo");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String re_pwd = request.getParameter("re_pwd");
		
		String message = null;

		if (nom.isEmpty() || prenom.isEmpty() || pseudo.isEmpty() || email.isEmpty() || pwd.isEmpty() || re_pwd.isEmpty()) {
			message = "Veuillez remplir les champs vides";
			request.setAttribute("erros", message);
			request.getRequestDispatcher("inscrire.jsp").forward(request, response);
		}
		else if (!pwd.equals(re_pwd)){
			message = "Mot de passe incorrect";
			request.setAttribute("errosPwd", message);
			request.getRequestDispatcher("inscrire.jsp").forward(request, response);
		}
		else {
//		Stocker les donnees recuperes dans userBean
		UserBean user = new UserBean(nom, prenom, pseudo, email, pwd, re_pwd);
//		Ajouter userBean dans la list
		userList.add(user);
		
//		Envoi userList dans le jsp avec session
		HttpSession session = request.getSession();
		session.setAttribute("list", userList);
//		session.setAttribute("current", user);

//		Envoi userList dans le jsp avec request pour le nom et prenom
		request.setAttribute("list", userList);
		
//		redirection vers la page d'accueil
//		response.sendRedirect("/tpServletJSP_SESSION/accueil.jsp");
		request.getRequestDispatcher("accueil.jsp").forward(request, response);
		}
	}

}
