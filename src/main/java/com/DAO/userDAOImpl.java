package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class userDAOImpl implements userDAO{
    private Connection conn;

    public userDAOImpl(Connection conn) {
        super();
        this.conn=conn;
    }

    public boolean userRegister(User us){
        boolean f=false;

        try{
            String sql="insert into users(name,email,phone,password,address) values(?,?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhone());
            ps.setString(4, us.getPassword());
            ps.setString(5, us.getAddress());
            


            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public User login(String email, String password) {
        User us=null;

        try{
            String sql="SELECT * FROM users WHERE email=? and password=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);

            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                us=new User();
                us.setId(rs.getInt(1));
                us.setName(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setPhone(rs.getString(4));
                us.setPassword(rs.getString(5));
                us.setAddress(rs.getString(6));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return us;
    }

    
}
