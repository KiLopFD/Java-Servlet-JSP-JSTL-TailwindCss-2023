<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <c:import url="/includes/header.html" />
  <c:import url="/includes/nav.html" />

  <div class="wrap-ctn mx-auto min-h-[40rem] py-10 mt-20 container">

    <h1 class="text-center">Your cart</h1>

    <table class="table-auto w-full text-sm text-left text-gray-400">
      <thead class="">
        <tr>
          <th>Quantity</th>
          <th>Description</th>
          <th>Price</th>
          <th>Amount</th>
          <th></th>
        </tr>
      </thead>
      <tbody class="bg-gray-800">

        <c:forEach var="item" items="${cart.items}">
          <tr>
            <td class="px-6 py-4">
              <form action="" method="post" class="flex gap-2 flex-row md:flex-nowrap	flex-wrap">
                <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                <input
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 w-5"
                  type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
                <input
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 cursor-pointer"
                  type="submit" value="Update">
              </form>
            </td>
            <td class="px-6 py-4">
              <c:out value='${item.product.description}' />
            </td>
            <td class="px-6 py-4">${item.product.priceCurrencyFormat}</td>
            <td class="px-6 py-4">${item.totalCurrencyFormat}</td>
            <td class="px-6 py-4">
              <form action="" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                <input
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  type="hidden" name="quantity" value="0">
                <input
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 cursor-pointer"
                  type="submit" value="Remove Item">
              </form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>

    <p class="text-center"><b>To change the quantity</b>, enter the new quantity
      and click on the Update button.</p>
    <div class="divide py-10"></div>
    <div class="wrap-btn flex justify-center flex-row flex-wrap gap-2">

      <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <button type="submit" value="Continue Shopping"
          class="relative inline-flex items-center justify-center p-0.5 mb-2 mr-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-purple-500 to-pink-500 group-hover:from-purple-500 group-hover:to-pink-500 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-purple-200 dark:focus:ring-purple-800 animate-bounce">
          <span
            class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-gray-900 rounded-md group-hover:bg-opacity-0">
            Continue Shopping
          </span>
        </button>
      </form>

      <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <button type="submit" value="Checkout"
          class="relative inline-flex items-center justify-center p-0.5 mb-2 mr-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-purple-500 to-pink-500 group-hover:from-purple-500 group-hover:to-pink-500 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-purple-200 dark:focus:ring-purple-800 animate-bounce">
          <span
            class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-gray-900 rounded-md group-hover:bg-opacity-0">
            Checkout
          </span>
        </button>
      </form>
    </div>
  </div>

  <%@ include file="/includes/footer.jsp" %>