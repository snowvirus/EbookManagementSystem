<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Admin: Add Books</title>
                <%@include file="allCss.jsp" %>
            </head>

            <body style="background-color:#f0f2f4">
                <%@include file="navbar.jsp" %>

                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 offset-md-4">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="text-center">Add Books</h4>
                                        <!--<p>Context Path: ${pageContext.request.contextPath}</p>-->

                                        <c:if test="${not empty succMsg } ">
                                            <p class="text-center text-success">${succMsg }</p>
                                            <c:remove var="succMsg" />
                                        </c:if>
                                        <!--scope="session"-->
                                        <c:if test="${not empty failedMsg } ">
                                            <p class="text-center text-danger">${failedMsg }</p>
                                            <c:remove var="failedMsg" />
                                        </c:if>

                                        <form action="../add_books" method="post" enctype="multipart/form-data" mt-3>



                                            <div class="form-group">
                                                <label for="exampleInputEmail">Book Name*</label>
                                                <input type="text" name="bname" id="exampleInputEmail"
                                                    aria-describedby="emailHelp" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail">Author Name*</label>
                                                <input type="text" name="author" id="exampleInputEmail"
                                                    aria-describedby="emailHelp" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail">Price</label>
                                                <input type="number" name="price" id="exampleInputPassword"
                                                    class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail">Book Category</label>
                                                <select name="btype" id="inputState" class="form-control">
                                                    <option value="" selected>--select--</option>
                                                    <option value="New">New Book</option>
                                                </select>

                                            </div>



                                            <div class="form-group">
                                                <label for="exampleInputEmail">Book Status</label>
                                                <select name="bstatus" id="inputState" class="form-control">
                                                    <option value="" selected>--select--</option>
                                                    <option value="available">available</option>
                                                    <option value="unavailable">unavailable</option>
                                                </select>

                                            </div>

                                            <div class="form-group">
                                                <label for="exampleFormControlFile1">Upload Photo</label>
                                                <input type="file" name="bimg" id="exampleFormControlFile1"
                                                    class="form-control-file">
                                            </div>
                                            <button type="submit" class="btn btn-primary">Add</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div style="margin-top: 25vh;">
                        <%@include file="footer.jsp" %>
                    </div>
            </body>

            </html>