<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/23
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>消息提示</title>
</head>
<body>
    <script type="text/javascript">
        alert("${message}");
        window.history.back();
    </script>
</body>
</html>
