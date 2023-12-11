package com.servlet;
import java.io.IOException;

import java.io.PrintWriter;
//import java.util.Date;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;
//import javax.transaction.Transaction;

//import java.util.*;
import org.hibernate.Session;
import com.helper.*;

import com.entities.Note;

import java.io.IOException;
import java.io.PrintWriter;
//import java.util.Date;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;
//import javax.transaction.Transaction;

//import java.util.*;
import org.hibernate.Session;
import com.helper.*;

import com.entities.Note;

/**
 * Servlet implementation class savenote
 */
public class savenote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public savenote() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		try
	{
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		Note n = new Note(title, content, new Date()); 
	   //System.out.print(n.getId()+": "+n.getContent());
	   Session s=FactoryProvider.getFactory().openSession();
	   Transaction t=s.beginTransaction();
	   s.persist(n);
	   t.commit();
	   s.close();
	   response.setContentType("text/html");
	   PrintWriter out=response.getWriter();
	   out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
		out.println("<h1 style='text-align:center;'><a href='All_Notes.jsp'>View all notes</a></h1>");

	   
	   
	   
	}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		
	
	}

}
