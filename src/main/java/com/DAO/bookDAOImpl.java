package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.books;

public class bookDAOImpl implements bookDAO {

    private Connection conn;

    public bookDAOImpl(Connection conn){
        super();
        this.conn=conn;
    }

    @Override
    public boolean add_books(books b) {
        
        boolean f=false;
        try{
            String sql = "INSERT INTO books (bookname, author, price, bookCategory, status, photo,email) VALUES (?,?, ?, ?, ?, ?, ?)";

            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, b.getBookname());
            ps.setString(2, b.getAuthor());
            ps.setDouble(3, Double.parseDouble(b.getPrice()));

            ps.setString(4, b.getBookCategory());
            ps.setString(5, b.getStatus());
            ps.setString(6, b.getPhoto());
            ps.setString(7,b.getEmail());
            
            
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }


        }catch(Exception e){
            e.printStackTrace();
        }
                return f;

    }

    public List<books> getAllBooks(){

        List<books> list=new ArrayList<books>();
        books b=null;

        try{
            String sql="select * from books";

            PreparedStatement ps=conn.prepareStatement(sql);

            ResultSet rs=ps.executeQuery();
            while (rs.next()) {
                b=new books();
                b.setBookId(rs.getInt(1));
                b.setBookname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhoto(rs.getString(7));
                b.setEmail(rs.getString(8));

                list.add(b);
                
            }


        }catch(Exception e){

        }

        return list;
    }

    @Override
    public books getBooksById(int id) {
        // TODO Auto-generated method stub
        books b= null;

        try{
            String sql="select * from books where bookId=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                b=new books();
                b.setBookId(rs.getInt(1));
                b.setBookname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhoto(rs.getString(7));
                b.setEmail(rs.getString(8));
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return b;
    }

    @Override
    public boolean updateEditBooks(books b) {

        boolean f =false;
        try{
            String sql="update books set bookname=?,author=?,price=?,status=? where bookId=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, b.getBookname());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getPrice());;
            ps.setString(4, b.getStatus());
            ps.setInt(5, b.getBookId());

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
    public boolean deleteBooks(int id) {
        boolean f=false;
        try {
            String sql="delete from books where bookId=?";
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1, id);

            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
    

}