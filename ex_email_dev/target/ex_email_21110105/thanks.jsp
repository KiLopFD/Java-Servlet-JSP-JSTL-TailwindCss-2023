<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />

    <div class="wrap-ctn h-[40rem] py-40 mt-20">

        <div class="container mx-auto">

            <h1>Thanks for joining our email list</h1>
        
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
        
            <p>This email address was added to our list on ${requestScope.currentDate}</p>
        
            <p>The first address on our list is ${sessionScope.users[0].email}<br>
               The second address on our list is ${sessionScope.users[1].email}
            </p>
            <p>For customer service, contact ${initParam.custServEmail}</p>    
        
            <p>To enter another email address, click on the Back 
            button in your browser or the Return button shown 
            below.</p>
        </div>
          
    
        <div class="wrap-nav mt-10 flex justify-center">
            <a href="/ex_email_21110105/" class="bg-black cursor-pointer border-2 rounded-lg px-5 py-2 mx-auto inline-block transition-all h duration-150 border-white hover:border-amber-500 animate-bounce">Home Page</a>
        </div>
    </div>

    <%@ include file="/includes/footer.jsp" %>