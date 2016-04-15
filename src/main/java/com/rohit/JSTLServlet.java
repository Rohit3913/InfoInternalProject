package com.rohit;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JSTLServlet
 */
public class JSTLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JSTLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//	request.setAttribute("user", "Sujeet");
		List< String> animals = new ArrayList<String>();
		animals.add("Dog");
		animals.add("Cat");
		animals.add("Tiger");
		animals.add("Elephant");
		request.setAttribute("showtable", false);
		request.setAttribute("animals",animals);
		
		request.setAttribute("authority","high");
		
		
		User user = new User();
		user.setEmailId("R.kumar.chaudahri@accenture.com");
		user.setName("Rohit Chaudhari");
		user.setPassword("Zurich01");
		request.setAttribute("user",user);
		
		Map<String, String> map =  new HashMap<String, String>();
		map.put("Rohit", "11047614");
		map.put("Ankit", "12512035");
		request.setAttribute("map", map);
		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("testJSTL.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
