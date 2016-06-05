<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h2>Hello Worlda!</h2>

<h1>${name}</h1>

 <table border="2">
<c:forEach items="${name}" var="element">    
   <tr ><td><c:out value="${element}"/></td></tr>
</c:forEach>
</table>

</body>
</html>
