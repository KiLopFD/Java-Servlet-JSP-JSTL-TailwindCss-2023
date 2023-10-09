<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/includes/header.html" />
    <c:import url="/includes/nav.html" />
    <div class="wrap-ctn mx-auto min-h-[40rem] py-10 mt-20">
        <div class="inner form-custom mx-auto">
            <h1>Downloads</h1>

            <h2>Paddlefoot - The First CD</h2>

            <table class="table-auto w-full text-sm text-left text-gray-400">
                <thead class="text-xs uppercase bg-gray-700 text-gray-400">
                    <tr>
                        <th>Song title</th>
                        <th>Audio Format</th>
                    </tr>
                </thead>
                <tbody class="bg-gray-800">
                    <tr>
                        <td class="px-6 py-3">64 Corvair</td>
                        <td class="px-6 py-3"><a href="./music_kilop_dev/${productCode}/music.mp3">MP3</a></td>
                    </tr>
                    <tr>
                        <td class="px-6 py-3">Whiskey Before Breakfast</td>
                        <td class="px-6 py-3"><a href="./music_kilop_dev/${productCode}/music.mp3">MP3</a></td>
                    </tr>
                </tbody>
            </table>

            <%@ include file="/includes/view_list.html" %>
            
        </div>
    </div>


    <%@ include file="/includes/footer.jsp" %>