<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error page</title>
</head>
<body>

<h2 align="center">Error page</h2>

<div align="center">


    <p align="left">
        <%--<c:out value="${ requestScope.errorMsg }" escapeXml="false"></c:out>--%>
        <%--<c:out value="${ requestScope.errorMsg }"></c:out>--%>
        <xmp>
            <c:out value="${ requestScope.errorMsg }" escapeXml="false"></c:out>
        </xmp>
    </p>

</div>

</body>
</html>