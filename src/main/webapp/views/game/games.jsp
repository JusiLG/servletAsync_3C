<%--
  Created by IntelliJ IDEA.
  User: claud
  Date: 06/08/2021
  Time: 08:37 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Games</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
</head>
<body>
    <div id="content">
        <table class="table">
            <thead class="table-dark">
            <tr>
                <th>No.</th>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Fecha de estreno</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${ listUsers }" var="games" varStatus="status">
                <tr>
                    <td>${ status.count }</td>
                    <td>${ games.name }</td>
                    <td><img src="data:image/jpeg;base64,${ game.imgGame }"</td>
                    <td>${ games.datePremiere }</td>
                    <td>${ games.Category_idCategory }</td>
                    <td>
                        <c:if test="${ games.status == 1 }">
                            <span class="badge rounded-pill bg-success">Activo</span>
                        </c:if>
                        <c:if test="${ games.status == 0 }">
                            <span class="badge rounded-pill bg-danger">Inactivo</span>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="${context}/assets/dist/js/main.js"></script>
</body>
</html>

