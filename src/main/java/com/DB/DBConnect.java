package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;
    /* 
    private static final String URL="jdbc:mysql://localhost:3306/javaWebApp";
    private static final String USER="root";
    private static final String PASSWORD="Security@12";
    */
    public static Connection getConn(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaWebApp","root","Security@12");
            System.out.println("connected");
        }catch(Exception e){
            System.out.println("nooooo");
            e.printStackTrace();
        }
        return conn;
    }
}
