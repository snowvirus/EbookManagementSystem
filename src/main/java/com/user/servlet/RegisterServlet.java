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



@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
//dopost....in implementingmethods


    @SuppressWarnings("unused")
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
    PrintWriter out = resp.getWriter();
        try{
            String name=req.getParameter("fName");
            String email=req.getParameter("email");
            String phone=req.getParameter("phone");
            String password=req.getParameter("password");
            String address=req.getParameter("address");
            String check=req.getParameter("check");


            
            User us=new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);
            us.setPassword(password);
            us.setAddress(address);

            HttpSession session=req.getSession();

            if(check!=null){

            userDAOImpl dao=new userDAOImpl(DBConnect.getConn());
            boolean f=dao.userRegister(us);
            if(f){
                //System.out.println("User Register Success...");
                session.setAttribute("succMsg","Registration Successfully Done..");
                resp.sendRedirect("register.jsp");
            }else{
                //System.out.println("Somenthng wrong on server..");
                session.setAttribute("failedMsg","Somenthng wrong on server..");
                resp.sendRedirect("register.jst");
            }
        }else{
            //System.out.println("Please check Agree & Terms Condition before you continue");
            session.setAttribute("failedMsg","Please check Agree & Terms Condition before you continue");
                resp.sendRedirect("register.jst");
        }

           //System.out.println(name+" "+email+" "+phone+" "+password+" "+check);

        }catch(Exception e){
            e.printStackTrace();
        }
    
    }
}