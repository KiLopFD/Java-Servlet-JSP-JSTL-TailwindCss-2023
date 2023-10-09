<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />

    <div class="wrap-ctn mx-auto min-h-[40rem] py-10 mt-20">
        <div class="inner">
            <div class="intro px-5">
                <h1>Download registration</h1>
    
                <p>To register for our downloads, enter your name and email
                    address below. Then, click on the Submit button.</p>
            </div>
            <div class="main-section">
                <div class="login-box">

                    <form action="download" method="post">
                        <input type="hidden" name="action" value="registerUser">
                        <div class="user-box">
                            <input type="email" name="email" value="${user.email}">
                            <label class="pad_top">Email:</label>
                        </div>

                        <div class="user-box">
                            <input type="text" name="firstName" value="${user.firstName}">
                            <label class="pad_top">First Name:</label>
                        </div>
                        <div class="user-box">
                            <input type="text" name="lastName" value="${user.lastName}">
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
    </div>


    <%@ include file="/includes/footer.jsp" %>