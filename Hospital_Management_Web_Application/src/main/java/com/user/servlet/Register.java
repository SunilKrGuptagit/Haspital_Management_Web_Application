package com.user.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entiry.User;

@WebServlet("/user_register")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    // session handling
		try {
			
			String fullName=req.getParameter(("fullname"));
			String email=req.getParameter("email");
			String password=req.getParameter("password");
	
			User u=new User(fullName, email, password);
			
			UserDao dao=new UserDao(DBconnect.getConn());
			 boolean f=dao.register(u);
			if(f)
			{
			  System.out.println("data ensert successful");	
			}
			else
			{
				System.out.println("something wrong on server");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
