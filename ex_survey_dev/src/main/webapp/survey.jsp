<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <div class="wrap-ctn w-full mx-auto md:py-40 py-20 mt-20">
        <div class="inner-wrap form-custom mx-auto">

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
            <div class="divide py-10"></div>
            <div class="wrap-btn flex justify-center">
                <a href="/ex_survey_21110105/"
                    class="relative inline-flex items-center justify-center p-0.5 mb-2 mr-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-purple-500 to-pink-500 group-hover:from-purple-500 group-hover:to-pink-500 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-purple-200 dark:focus:ring-purple-800 animate-bounce">
                    <span
                        class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-gray-900 rounded-md group-hover:bg-opacity-0">
                        Home Page
                    </span>
                </a>
            </div>
        </div>
    </div>
    <%@ include file="/includes/footer.jsp" %>
