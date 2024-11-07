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
import com.entity.books;


@WebServlet("/admin/editbooks")
public class EditbookServlet extends HttpServlet{
    
@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        try{

            int id =Integer.parseInt(req.getParameter("id"));
            String bookname=req.getParameter("bname");
            String author=req.getParameter("author");
            String price = req.getParameter("price");
            String status=req.getParameter("bstatus");

            books b=new books();
            b.setBookId(id);
            b.setBookname(bookname);
            b.setAuthor(author);
            b.setPrice(price);
            b.setStatus(status);

            bookDAOImpl dao=new bookDAOImpl(DBConnect.getConn());
            boolean f=dao.updateEditBooks(b);

            HttpSession session = req.getSession();
            if (f) {
                session.setAttribute("succMsg", "Book Updated Successfully.");
                resp.sendRedirect(req.getContextPath() + "/admin/all_books.jsp");
                session.removeAttribute("succMsg"); // Clear the session attribute
            } else {
                session.setAttribute("failedMsg", "Something went wrong. Try again!!!.");
                resp.sendRedirect(req.getContextPath() + "/admin/all_books.jsp");
                session.removeAttribute("failedMsg"); // Clear the session attribute
            }


        }catch(Exception e){
            e.printStackTrace();
        }

    }
}
