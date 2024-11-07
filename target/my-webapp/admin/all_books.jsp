<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="com.DB.DBConnect" %>
        <%@ page import="com.DAO.bookDAOImpl" %>
            <%@ page import="java.util.List" %>
                <%@ page import="com.entity.books" %>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                        <%@ page isELIgnored="false" %>

                            <!DOCTYPE html>
                            <html>

                            <head>

                                <%@include file="allCss.jsp" %>
                                    <title>Admin: All Books</title>
                            </head>

                            <body>
                                <%@include file="navbar.jsp" %>
                                    <h3 class="text-center">Hello Admin</h3>

                                    <table class="table table-striped table-dark ">
                                        <thead class="text-white">
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">image</th>
                                                <th scope="col">Book Name</th>
                                                <th scope="col">Author</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Categories</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                            <% bookDAOImpl dao=new bookDAOImpl(DBConnect.getConn()); List<books> list =
                                                dao.getAllBooks();
                                                for (books b : list) {
                                                %>
                                                <tr>
                                                    <td>
                                                        <%= b.getBookId() %>
                                                    </td>
                                                    <td><img src="../books/<%= b.getPhoto() %>"
                                                            style="width: 50px; height: 50px;"></td>
                                                    <td>
                                                        <%= b.getBookname() %>
                                                    </td>
                                                    <td>
                                                        <%= b.getAuthor() %>
                                                    </td>
                                                    <td>
                                                        <%= b.getPrice() %>
                                                    </td>
                                                    <td>
                                                        <%= b.getBookCategory() %>
                                                    </td>
                                                    <td>
                                                        <%= b.getStatus() %>
                                                    </td>
                                                    <td>
                                                        <a href="edit_book.jsp?id=<%= b.getBookId() %>"
                                                            class="btn btn-primary"><i class="fa-solid fa-user-pen"></i>
                                                            Edit</a>
                                                        <a href="../delete?id=<%=b.getBookId() %>"
                                                            class="btn btn-warning text-red"><i
                                                                class="fa-solid fa-trash"></i> Delete</a>


                                                    </td>
                                                </tr>
                                                <% } %>




                                        </tbody>
                                    </table>



                                    <div style="margin-top: 40vh;">
                                        <%@include file="footer.jsp" %>
                                    </div>
                            </body>

                            </html>