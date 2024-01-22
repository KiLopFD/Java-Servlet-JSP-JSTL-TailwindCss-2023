<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <div class="wrap-ctn mx-auto py-40 mt-20">
        <div class="inner form-custom mx-auto">
            <h1>Cookies</h1>
        
            <p>All persistent cookies have been removed from this browser.</p>
        
            <%@ include file="/includes/view_list.html" %>

        </div>
    </div>

    <%@ include file="/includes/footer.jsp" %>