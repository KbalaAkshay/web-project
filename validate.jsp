<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/webproject" user="root" password="" />

<c:set var="username" value="${param.uname}" />
<c:set var="password" value="${param.pass}" />

<sql:query dataSource="${db}" var="result">
  SELECT * FROM account WHERE fname = ? AND passw = ?
  <sql:param value="${username}" />
  <sql:param value="${password}" />
</sql:query>

<c:choose>
  <c:when test="${result.rowCount > 0}">
    <c:set var="validCredentials" value="true" />
  </c:when>
  <c:otherwise>
    <c:set var="validCredentials" value="false" />
  </c:otherwise>
</c:choose>

<c:if test="${validCredentials}">
  <c:redirect url="http://localhost:8080/WebApplication1/mainpage.html" />
</c:if>

<c:if test="${not validCredentials}">
  <c:redirect url="http://localhost:8080/WebApplication1/index.html" />
</c:if>
