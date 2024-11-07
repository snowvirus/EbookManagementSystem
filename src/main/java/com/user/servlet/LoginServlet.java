package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
    @SuppressWarnings("unused")
    PrintWriter out = resp.getWriter();
        try{

            userDAOImpl dao=new userDAOImpl(DBConnect.getConn());
            HttpSession session=req.getSession();

        String email=req.getParameter("email");
        String password=req.getParameter("password");

        if("snow@gmail.com".equals(email)&&"admin".equals(password)){
           User us=new User();
           us.setName("Admin");
           session.setAttribute("userobj", us);
            resp.sendRedirect("admin/home.jsp");
        }else{

            User us=dao.login(email, password);
            if(us!=null){
                session.setAttribute("userobj", us);
                resp.sendRedirect("home.jsp");
            }else{
                session.setAttribute("failedMsg", "Emaill & Password Invalid");
                resp.sendRedirect("login.jsp");
            }

            resp.sendRedirect("home.jsp");
        }

       // System.out.println(email+" "+password);

    }catch(Exception e){
        e.printStackTrace();
    }
    }
    
    
    

}
