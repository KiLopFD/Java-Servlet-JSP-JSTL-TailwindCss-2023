<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<c:import url="/includes/nav.html" />
        <div class="wrap-ctn container mx-auto min-h-[40rem] py-10 mt-20">
            <c:if test="${message != null}">
                <p><i>
                        <c:out value="${message}"></c:out>
                    </i></p>
            </c:if>
            <div class="wrap container mx-auto">
                
                <h1 class="text-center text-3xl text-white">Join our email list</h1>
                <p class="text-white text-center">To join our email list, enter your name and
                    email address below.</p>
            </div>
            <jsp:useBean id="user" scope="session" class="Serializers.User" />
            <div class="main-section">
    
                <div class="login-box">
    
                    <form action="emailList" method="post">
    
                        <input required type="hidden" name="action" value="add">
                        <div class="user-box">
                            <input required type="email" name="email" value="<jsp:getProperty name="user"
                                property="email" />">
                            <label class="pad_top">Email:</label>
                        </div>
    
                        <div class="user-box">
                            <input required type="text" name="firstName" value="<jsp:getProperty name="user"
                                property="firstName" />">
                            <label class="pad_top">First Name:</label>
                        </div>
    
                        <div class="user-box">
                            <input required type="text" name="lastName" value="<jsp:getProperty name="user"
                                property="lastName" />">
                            <label class="pad_top">Last Name:</label>
                        </div>
                        <div class="wrap-btn">

                            <button type="submit" value="Join Now" class="submit_form mx-auto block">
                                Submit
                                <span></span>
                            </button>
                        </div>
    
                    </form>
                </div>
            </div>
        </div>


        <%@ include file="/includes/footer.jsp" %>