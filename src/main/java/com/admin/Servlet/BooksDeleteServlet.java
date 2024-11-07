package com.admin.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.bookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class BooksDeleteServlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id=Integer.parseInt(req.getParameter("id"));
            
            bookDAOImpl dao=new bookDAOImpl(DBConnect.getConn());
            boolean f=dao.deleteBooks(id);

            HttpSession session = req.getSession();
            if (f) {
                session.setAttribute("succMsg", "Book deleted Successfully.");
                resp.sendRedirect(req.getContextPath() + "/admin/all_books.jsp");
                session.removeAttribute("succMsg"); // Clear the session attribute
            } else {
                session.setAttribute("failedMsg", "Something went wrong. Try again!!!.");
                resp.sendRedirect(req.getContextPath() + "/admin/all_books.jsp");
                session.removeAttribute("failedMsg"); // Clear the session attribute
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
