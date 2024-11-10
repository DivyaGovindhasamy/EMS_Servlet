package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		double salary=Double.parseDouble(req.getParameter("salary"));
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		int dno= Integer.parseInt(req.getParameter("dno"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
			PreparedStatement ps=con.prepareStatement("update emp set name=?,salary=?,email=?,password=?,dno=? where id=?");
			ps.setString(1,name);
			ps.setDouble(2,salary);
			ps.setString(3,email);
			ps.setString(4,password);
			ps.setInt(5,dno);
			ps.setInt(6, id);
			int row=ps.executeUpdate();
			System.out.println(row+" : row Updated");
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} 
		
		
		PrintWriter pw = resp.getWriter();
		pw.write("<html><body><h1> Employee Updated Successfully</h1></body></html>");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
			Statement s = con.createStatement();
			ResultSet rs =s.executeQuery("select * from emp");
			req.setAttribute("rs", rs);
			RequestDispatcher rd = req.getRequestDispatcher("allemp.jsp");
			rd.include(req, resp);
			
			rs.close();
			s.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
