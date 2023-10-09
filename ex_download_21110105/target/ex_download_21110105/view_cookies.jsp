<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <c:import url="/includes/header.html" />
  <c:import url="/includes/nav.html" />
  <div class="wrap-ctn mx-auto min-h-[40rem] py-10 mt-20">
    <div class="inner form-custom mx-auto">
      <h1>Cookies</h1>

      <p>Here's a table with all of the cookies that this
        browser is sending to the current server.</p>

      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <table class="w-full text-sm text-left text-gray-400">
          <thead class="text-xs uppercase bg-gray-700 text-gray-400">
            <tr>
              <th class="px-6 py-3">Name</th>
              <th class="px-6 py-3">Value</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="c" items="${cookie}">
              <tr class="bg-gray-800">
                <td class="px-6 py-4">
                  <c:out value='${c.value.name}' />
                </td>
                <td class="px-6 py-4">
                  <c:out value='${c.value.value}' />
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <%@ include file="/includes/view_list.html" %>

    </div>
  </div>


  <%@ include file="/includes/footer.jsp" %>