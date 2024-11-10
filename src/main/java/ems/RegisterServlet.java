package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns="/reg")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String salary=req.getParameter("salary");
		String email=req.getParameter("email");
		String password =req.getParameter("password");
		String dno=req.getParameter("dno");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
			PreparedStatement ps= con.prepareStatement("insert into emp values(?,?,?,?,?,?)");
			ps.setInt(1, Integer.parseInt(id));
			ps.setString(2, name);
			ps.setDouble(3, Double.parseDouble(salary));
			ps.setString(4, email);
			ps.setString(5, password);
			ps.setInt(6, Integer.parseInt(dno));
			int row=ps.executeUpdate();
			System.out.println(row +" Row affected ...");
			ps.close();
			con.close();
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h1 id='msg'>Registration Completed Successfully</h1></body></html>");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
			
			
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		

		
		
		
		
	}

}
