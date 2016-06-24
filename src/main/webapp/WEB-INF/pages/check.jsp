<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Studio 34</title>
</head>

<body>

<audio controls>
    <source src="<c:url value="/resources/created.mp3" />" type="audio/mpeg">
    Your browser does not support the audio element.
</audio>

<audio controls src="${s}" />

</body>

</html>