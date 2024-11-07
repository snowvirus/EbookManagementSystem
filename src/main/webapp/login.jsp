<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Login Page</title>
                <%@include file="all_component/allCss.jsp" %>
            </head>

            <body style="background-color: azure;">
                <%@include file="all_component/navbar.jsp" %>
                    <div class="container mt-3">
                        <div class="row">
                            <div class="col-md-4 offset-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="text-center">Login</h3>


                                        <c:if test="${not empty failedMsg}">
                                            <p class="text-center text-danger">${failedMsg}</p>
                                            <C:remove var="failedMsg" />
                                        </c:if>

                                        <c:if test="${not empty succMsg}">
                                            <p class="text-center text-danger">${succMsg}</p>
                                            <C:remove var="succMsg" />
                                        </c:if>


                                        <form action="login" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1"
                                                    aria-describedby="emailHelp" required="required" name="email">

                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1"
                                                    required="required" name="password">
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" class="btn btn-success">Login</button> <br>
                                                <a href="register.jsp">create account</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 25vh;">
                        <%@include file="all_component/footer.jsp" %>
                    </div>
            </body>

            </html>