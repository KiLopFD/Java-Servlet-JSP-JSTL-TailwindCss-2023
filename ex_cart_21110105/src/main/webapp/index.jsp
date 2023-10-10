<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <h1 class="text-center">CD list</h1>
    <div class="wrap-ctn mx-auto md:py-40 py-20 mt-20 container md:px-10 px-3">

        <table class="table-auto w-full text-sm text-left text-gray-400 rounded-lg overflow-hidden">
            <thead>
                <tr>
                    <th class="px-5 font-semibold">Description</th>
                    <th class="px-5 font-semibold">Price</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody class="bg-gray-800 rounded-lg overflow-hidden">
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td class="px-6 py-4">
                            <c:out value='${product.description}' />
                        </td>
                        <td class="px-6 py-4">${product.priceCurrencyFormat}</td>
                        <td>
                            <form action="cart" method="post">
                                <input
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                                <button type="submit" value="Add To Cart"
                                    class="relative inline-flex items-center justify-center p-0.5 mb-2 mr-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-purple-500 to-pink-500 group-hover:from-purple-500 group-hover:to-pink-500 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-purple-200 dark:focus:ring-purple-800 animate-bounce">
                                    <span
                                        class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-gray-900 rounded-md group-hover:bg-opacity-0">
                                        Add To Card
                                    </span>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <%@ include file="/includes/footer.jsp" %>