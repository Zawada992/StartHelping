<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="../headerLog.jsp" %>
<body>
<header class="header--main-page">
    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Szczegóły
            </h1>
        </div>
    </div>
</header>


<section id="donation" class="steps">
    <h2>Szczegóły daru</h2>
    <table class="custom-table">
        <tbody>
        <tr class="custom-tr">
            <td class="custom-td">Adres:</td>
            <td class="custom-td">${donation.city}, ${donation.street}</td>
        </tr>
        <tr class="custom-tr">
            <td class="custom-td">Data i godzina przybycia kuriera:</td>
            <td class="custom-td">${donation.pickUpDate} ${donation.pickUpTime}</td>
        </tr>
        <tr class="custom-tr">
            <td class="custom-td">Dla fundacji "${donation.institution.name}"</td>
            <td class="custom-td"></td>
        </tr>
        <tr class="custom-tr">
            <td class="custom-td">Kategorie darów:</td>
            <td class="custom-td">
                <c:forEach items="${donation.categories}" var="category">
                    ${category.name},
                </c:forEach>
            </td>
        </tr>
        <tr class="custom-tr">
            <td class="custom-td">Ilość worków:</td>
            <td class="custom-td">${donation.quantity}</td>
        </tr>
        <tr class="custom-tr">
            <td class="custom-td">Status:</td>
            <td class="custom-td"><c:if test="${donation.taken}">Odebrane</c:if><c:if test="${!donation.taken}">Nieodebrane</c:if></td>
        </tr>
        <c:if test="${donation.taken}">
            <tr class="custom-tr">
                <td class="custom-td">Data i godzina odbioru worków:</td>
                <td class="custom-td">${donation.pickedUpDate} ${donation.pickedUpTime}</td>
            </tr>
        </c:if>
        </tbody>
    </table>

    <a href="/admin/donation" class="btn btn--large">Powrót</a>

</section>

</body>
<%@ include file="../footer.jsp" %>
</html>
