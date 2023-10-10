<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <div class="w-full mx-auto md:py-20 py-10 mt-20">

        <div class="main-section login-box">

            <form action="survey" method="post" class="form-custom mx-auto bg-gray-600 p-2 rounded-lg">
                <h1>Survey</h1>
                <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

                <h2 class="my-5">Your information:</h2>
                <div class="user-box">
                    <label class="pad_top">First Name</label>
                    <input
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        type="text" name="firstName" required placeholder="Type here"><br>
                </div>
                <div class="user-box">
                    <label class="pad_top">Last Name</label>
                    <input
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        type="text" name="lastName" required placeholder="Type here"><br>
                </div>
                <div class="user-box">
                    <label class="pad_top">Email</label>
                    <input
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        type="email" name="email" required placeholder="Type here"><br>
                </div>

                <h2 class="my-5">How did you hear about us?</h2>
                <div class="flex gap-3 flex-row">
                    <div class="wrap-item">
                        <input type=radio name="heardFrom" value="Search Engine">Search engine
                    </div>
                    <div class="wrap-item">
                        <input type=radio name="heardFrom" value="Friend">Word of mouth
                    </div>
                    <div class="wrap-item">
                        <input type=radio name="heardFrom" value="Other">Other
                    </div>
                </div>

                <h2 class="my-5">Would you like to receive announcements about new CDs and special offers?</h2>
                <p><input type="checkbox" name="wantsUpdates" checked>YES, I'd like that.</p>

                <p class="my-5">Please contact me by:
                    <select name="contactVia"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <option class="text-black" value="Both" selected>Email or postal mail</option>
                        <option class="text-black" value="Email">Email only</option>
                        <option class="text-black" value="Postal Mail">Postal mail only</option>
                    </select>
                </p>

                <div class="wrap-btn py-10 flex justify-center">

                    <button type="submit"
                        class="relative inline-flex items-center justify-center p-0.5 mb-2 mr-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-purple-500 to-pink-500 group-hover:from-purple-500 group-hover:to-pink-500 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-purple-200 dark:focus:ring-purple-800 animate-bounce">
                        <span
                            class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-gray-900 rounded-md group-hover:bg-opacity-0">
                            Submit
                        </span>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="/includes/footer.jsp" %>