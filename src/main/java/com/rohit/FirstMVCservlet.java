package com.rohit;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstMVCservlet
 */
public class FirstMVCservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstMVCservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		JavaDeveloper developer = new JavaDeveloper();
		User user = new User();
		user.setEmailId("Rohit@accenture.com");
		user.setName("Rohit");
		user.setPassword("Zurich01");
		developer.setUser(user);
		developer.setName("Rohit Chaudhari");
		request.setAttribute("deveoper", developer);
		
		List<String> animals = new ArrayList<String>();
		
		animals.add("Dog");
		animals.add("Cat");
		animals.add("Elephant");
		request.setAttribute("animals", animals);
		int []number = {1,2,3,4,5,6};
		request.setAttribute("number", number);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
