<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="com.DB.DBConnect" %>

            <%@ page import="java.sql.*" %>


                <!DOCTYPE html>

                <html>

                <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">

                    <title>Ebook: index</title>
                    <%@include file="all_component/allCss.jsp" %>
                        <style type="text/css">
                            .back-img {
                                background: url(img/images.jpeg);
                                height: 50vh;
                                width: 100%;
                                background-size: cover;
                                background-repeat: no-repeat;
                            }

                            .crd-ho:hover {
                                background: #e3e2de;
                            }
                        </style>
                </head>

                <body>
                    <%@include file="all_component/navbar.jsp" %>

                        <div class="container-fluid back-img">
                            <h2 class="text-center text-red"><i class="fa-solid fa-book"> </i> EBook Management System
                            </h2>
                        </div>




                        <!--start recent book-->
                        <div class="container-fluid">
                            <h3 class="text-center">Recent Book</h3>
                            <div class="row">
                                <!-- First Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/java.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Java Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1"><i
                                                        class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">400</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Second Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/linux.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Linux basics</p>
                                            <p>Snow Virus</p>
                                            <p>Category: Old></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1"><i
                                                        class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">250</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Third Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/python.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Python Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1"><i
                                                        class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">300</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Fourth Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/sql.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Sql basic intoductions</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1"><i
                                                        class="fa-solid fa-cart-plus"></i> Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">500</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center mt-1">
                                <a href="" class="btn btn-danger btn-sm text-white">view all</a>
                            </div>
                        </div>
                        <!--end of recent book-->

                        <hr>

                        <!--start Newt book-->
                        <div class="container-fluid">
                            <h3 class="text-center">New Book</h3>
                            <div class="row">
                                <!-- First Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/jso.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Java Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">400</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Second Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/python1.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Linux basics</p>
                                            <p>Snow Virus</p>
                                            <p>Category: Old></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">250</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Third Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/js3.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Python Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">300</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Fourth Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/js2.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Sql basic intoductions</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">Add Cart</a>
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">500</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center mt-1">
                                <a href="" class="btn btn-danger btn-sm text-white">view all</a>
                            </div>
                        </div>
                        <!--end of New book-->

                        <hr>

                        <!--start Old book-->
                        <div class="container-fluid">
                            <h3 class="text-center">Old Book</h3>
                            <div class="row">
                                <!-- First Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/python2.png" alt="" style="width: 140px; height: 180px;">
                                            <p>Java Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">

                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">400</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Second Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/python1.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Linux basics</p>
                                            <p>Snow Virus</p>
                                            <p>Category: Old></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">250</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Third Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/java1.png" alt="" style="width: 140px; height: 180px;">
                                            <p>Python Programming</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">300</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Fourth Book Card -->
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="card crd-ho mb-4">
                                        <div class="card-body text-center">
                                            <img src="books/js.jpeg" alt="" style="width: 140px; height: 180px;">
                                            <p>Sql basic intoductions</p>
                                            <p>Snow Virus</p>
                                            <p>Category: New></p>
                                            <div class="row justify-content-center">
                                                <a href="#" class="btn btn-success btn-sm ml-1 mb-1">View Details</a>
                                                <a href="#" class="btn btn-danger btn-sm ml-1 mb-1">500</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center mt-1">
                                <a href="" class="btn btn-danger btn-sm text-white">view all</a>
                            </div>
                        </div>
                        <!--end of Old book-->
                        <div style="margin-top: 20vh;">
                            <%@include file="all_component/footer.jsp" %>
                        </div>
                </body>

                </html>