<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Admin: Home</title>
                <%@include file="allCss.jsp" %>
                    <style type="text/css">
                        a {
                            text-decoration: none;
                            color: black;
                        }
                    </style>
            </head>

            <body>
                <%@include file="navbar.jsp" %>
                    <!--    <c:if test="${empty userobj }">
                        <c:redirect url="${pageContext.request.contextPath}/login.jsp" />


                    </c:if>    -->
                    <div class=" container">
                        <div class="row p-5">
                            <!--Add books-->
                            <div class="col-md-3">
                                <a href="add_books.jsp">
                                    <div class="card">
                                        <div class="card-body text-center ">
                                            <i class="fa-solid fa-square-plus fa-3x text-primary"></i>
                                            <h4>Add Books</h4>
                                            -----------
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!--All books-->
                            <div class="col-md-3">
                                <a href="all_books.jsp">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <i class="fa-solid fa-book-open fa-3x text-success"></i>
                                            <h4>All Books</h4>
                                            -----------
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!--Order-->
                            <div class="col-md-3">
                                <a href="order.jsp">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <i class="fa-solid fa-box-open fa-3x text-warning"></i> <br>
                                            <h4>Order</h4>
                                            -----------
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="col-md-3">
                                <a data-toggle="modal" data-target="#exampleModalCenter">
                                    <div class="card">
                                        <div class="card-body text-center">
                                            <i class="fa-solid fa-right-from-bracket fa-3x" text-secondary></i> <br>
                                            <h4>LogOut</h4>
                                            -----------
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--   logout  modal   -->


                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Warning<i
                                            class="fa-solid fa-triangle-exclamation"></i></h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <div class="text-center">
                                        <h4>Do You Really Want To LogOut</h4>
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <a href="../logout" type="button" class="btn btn-primary text-white">LogOut</a>

                                    </div>
                                </div>
                                <div class="modal-footer">

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  end logout-->

                    <div style="margin-top: 30vh;">
                        <%@ include file="footer.jsp" %>
                    </div>
            </body>

            </html>