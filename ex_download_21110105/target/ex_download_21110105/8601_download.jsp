<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <div class="wrap-ctn mx-auto py-40 mt-20">
        <div class="inner form-custom mx-auto">
            <h1>Downloads</h1>

            <h2>86 (the band) - True Life Songs and Pictures</h2>

            <table class="table-auto w-full text-sm text-left text-gray-400">
                <thead class="text-xs uppercase bg-gray-700 text-gray-400">
                    <tr>
                        <th class="px-6 py-3">Song title</th>
                        <th class="px-6 py-3">Audio Format</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-gray-800">
                        <td class="px-6 py-4">You Are a Star</td>
                        <td class="px-6 py-4"><a href="./music_kilop_dev/${productCode}/music.mp3">MP3</a></td>
                    </tr>
                    <tr class="bg-gray-800">
                        <td class="px-6 py-4">Don't Make No Difference</td>
                        <td class="px-6 py-4"><a href="./music_kilop_dev/${productCode}/music.mp3">MP3</a></td>
                    </tr>
                </tbody>
            </table>

            <%@ include file="/includes/view_list.html" %>

        </div>
    </div>

    <%@ include file="/includes/footer.jsp" %>