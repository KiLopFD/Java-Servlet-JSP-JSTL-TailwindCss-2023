<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />

    <div class="wrap-ctn mx-auto py-40 mt-20">
        <div class="inner form-custom mx-auto">
            <h1 class="text-center">List of albums</h1>

            <c:if test="${cookie.firstNameCookie.value != null}">
                <p class="text-center">Welcome back,
                    <c:out value='${cookie.firstNameCookie.value}' />
                </p>
            </c:if>

            <p class="list-shoping text-center">
                <a href="download?action=checkUser&amp;productCode=8601" class="">
                    86 (the band) - True Life Songs and Pictures
                </a><br>

                <a href="download?action=checkUser&amp;productCode=pf01">
                    Paddlefoot - The First CD
                </a><br>

                <a href="download?action=checkUser&amp;productCode=pf02">
                    Paddlefoot - The Second CD
                </a><br>

                <a href="download?action=checkUser&amp;productCode=jr01">
                    Joe Rut - Genuine Wood Grained Finish
                </a>
            </p>
        </div>
    </div>


    <%@ include file="/includes/footer.jsp" %>