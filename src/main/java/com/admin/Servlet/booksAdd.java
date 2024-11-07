package com.admin.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.bookDAOImpl;
import com.DB.DBConnect;
import com.entity.books;

@WebServlet("/add_books")
@MultipartConfig
public class booksAdd extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        try{
            String bookname=req.getParameter("bname");
            String author=req.getParameter("author");
            String price = req.getParameter("price");
            String bookCategory=req.getParameter("btype");
            String status=req.getParameter("bstatus");
            Part part=req.getPart("bimg");
            String fileName=part.getSubmittedFileName();

            books b = new books(bookname,author,price,bookCategory,status,fileName,"snow@gmail.com");
            
            bookDAOImpl dao=new bookDAOImpl(DBConnect.getConn());
            
            
            boolean f=dao.add_books(b);
            HttpSession session=req.getSession();

            if(f){

                /*String path=getServletContext().getRealPath("")+"books";
                @SuppressWarnings("unused")
                File file=new File(path);
                if (!file.exists()) {
                    file.mkdirs();
                }
                part.write(path + File.separator +fileName);
*/
                session.setAttribute("succMsg", "Book Added Successfully");

                resp.sendRedirect("admin/add_books.jsp");

            }else{
                session.setAttribute("failedMsg", "Oops!!! Something went wrong. Try again");
                resp.sendRedirect("admin/add_books.jsp");
            }

        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

