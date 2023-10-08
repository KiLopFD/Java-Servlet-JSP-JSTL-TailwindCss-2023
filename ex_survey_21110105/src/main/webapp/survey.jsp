<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css" />
    </head>

    <body>
        <h1>Thanks for taking our survey!</h1>

        <p>Here is the information that you entered:</p>

        <label>Email:</label>
        <span>
            <c:out value="${user.email}"></c:out>
        </span><br>
        <label>First Name:</label>
        <span>
            <c:out value="${user.firstName}"></c:out>
        </span><br>
        <label>Last Name:</label>
        <span>
            <c:out value="${user.lastName}"></c:out>
        </span><br>
        <label>Heard From:</label>
        <span>
            <c:out value="${user.heardFrom}"></c:out>
        </span><br>
        <label>Updates:</label>
        <span>
            <c:out value="${user.wantsUpdates}"></c:out>
        </span><br>
        <c:if test="${user.wantsUpdates == 'Yes'}">
            <label>Contact Via:</label>
            <span>
                <c:out value="${user.contactVia}"></c:out>
            </span><br>
        </c:if>
        <form action="/ex_survey_21110105" method="get">
            <input type="submit" value="Return">
        </form>
    </body>

    </html>