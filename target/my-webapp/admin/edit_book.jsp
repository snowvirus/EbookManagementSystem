<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>

            <%@ page import="com.DAO.bookDAOImpl, com.DB.DBConnect, com.entity.books" %>

                <!DOCTYPE html>
                <html>

                <head>
                    <title>Admin: Add Books</title>
                    <%@include file="allCss.jsp" %>
                </head>

                <body style="background-color:#f0f2f4">
                    <%@include file="navbar.jsp" %>
                        <h3 class="text-center">Hello Admin</h3>
                        <c:if test="${not empty succMsg } ">
                            <p class="text-center text-success">${succMsg }</p>
                            <c:remove var="succMsg" />
                        </c:if>
                        <!--scope="session"-->
                        <c:if test="${not empty failedMsg } ">
                            <p class="text-center text-danger">${failedMsg }</p>
                            <c:remove var="failedMsg" />
                        </c:if>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 offset-md-4">
                                    <div class="card">
                                        <div class="card-body">

                                            <h4 class="text-center">Edit Books</h4>
                                            <!--<p>Context Path: ${pageContext.request.contextPath}</p>-->



                                            <% int id=Integer.parseInt(request.getParameter("id")); bookDAOImpl dao=new
                                                bookDAOImpl(DBConnect.getConn()); books b=dao.getBooksById(id); %>

                                                <form action="<%=request.getContextPath()%>/admin/editbooks"
                                                    method="post">


                                                    <input type="hidden" name="id" value="<%=b.getBookId() %>">


                                                    <div class="form-group">
                                                        <label for="exampleInputEmail">Book Name*</label>
                                                        <input type="text" name="bname" id="exampleInputEmail"
                                                            aria-describedby="emailHelp" class="form-control"
                                                            value="<%=b.getBookname()%>">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail">Author Name*</label>
                                                        <input type="text" name="author" id="exampleInputEmail"
                                                            aria-describedby="emailHelp" class="form-control"
                                                            value="<%=b.getAuthor()%>">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="exampleInputEmail">Price</label>
                                                        <input type="number" name="price" id="exampleInputPassword"
                                                            class="form-control" value="<%=b.getPrice()%>">
                                                    </div>


                                                    <div class="form-group">
                                                        <label for="exampleInputEmail">Book Status</label>
                                                        <select name="bstatus" id="inputState" class="form-control">
                                                            <% if("available".equals(b.getStatus())){%>
                                                                <option value="available">available</option>
                                                                <option value="unavailable">unavailable</option>
                                                                <%}else{%>
                                                                    <option value="unavailable">unavailable</option>
                                                                    <option value="available">available</option>
                                                                    <%} %>


                                                        </select>

                                                    </div>


                                                    <button type="submit" class="btn btn-primary">Update</button>
                                                </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div style="margin-top: 40vh;">
                            <%@include file="footer.jsp" %>
                        </div>
                </body>

                </html>