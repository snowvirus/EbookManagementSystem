<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Page Title</title>
            </head>

            <body>
                <h1>User:Home</h1>
                <c:if test="${not empty userobj}">
                    <h1>Name:${userobj.name }</h1>
                    <h1>Email:${userobj.email }</h1>
                </c:if>

            </body>

            </html>