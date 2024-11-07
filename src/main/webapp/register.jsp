<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Register</title>
                <%@include file="all_component/allCss.jsp" %>



            </head>

            <body style="background-color: beige d-flex align-items-center justify-content-center"
                style="height: 100vh;">
                <%@include file="all_component/navbar.jsp" %>
                    <div class="container p-3">
                        <div class="row">
                            <div class="col-md-4 offset-md-4">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="text-center">Registration Form</h4>

                                        <c:if test="${not empty succMsg}">
                                            <p class="text-center text-success">${succMsg}</p>
                                            <C:remove var="succMsg" />
                                        </c:if>

                                        <c:if test="${not empty failedMsg}">
                                            <p class="text-center text-danger">${failedMsg}</p>
                                            <C:remove var="failedMsg" />
                                        </c:if>



                                        <form action="register" method="post">


                                            <div class="form-group">
                                                <label for="exampleInputName">Enter Full Name</label>
                                                <input type="text" class="form-control" id="exampleInputName"
                                                    aria-describedby="emailHelp" placeholder="John" required="required"
                                                    name="fName">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1"
                                                    aria-describedby="emailHelp" placeholder="john@example.com"
                                                    required="required" name="email">

                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPhoneNo">Phone No</label>
                                                <input type="number" class="form-control" id="exampleInputPhoneNo"
                                                    required="required" name="phone">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1"
                                                    required="required" name="password">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Address</label>
                                                <input type="text" class="form-control" id="exampleInputPassword1"
                                                    required="required" name="address">
                                            </div>
                                            <div class="form-group form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1"
                                                    required="required" name="check">
                                                <label class="form-check-label" for="exampleCheck1">Agree with terms &
                                                    conditions</label>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 20vh;">
                        <%@include file="all_component/footer.jsp" %>
                    </div>
            </body>

            </html>