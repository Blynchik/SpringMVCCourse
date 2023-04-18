<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: Blynchik
  Date: 13.04.2023
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Enter details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    Department <form:select path="department">

<%--        <form:option value="Inforamtion Technology" label="IT"/>--%>
<%--        <form:option value="Human Resources" label="HR"/>--%>
<%--        <form:option value="Sales" label="Sales"/>--%>

            <form:options items="${employee.departments}"/>
        </form:select>
    <br>
    Which car do you want?
<%--        BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--        Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--        Mercedes-Benz <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>

        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    Foreign language(s)
<%--        EN <form:checkbox path="languages" value="English"/>--%>
<%--        DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--        FR <form:checkbox path="languages" value="French"/>--%>
        <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <input type="submit" value="OK">

</form:form>

</body>
</html>
