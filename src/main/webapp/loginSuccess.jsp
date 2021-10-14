<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/10/11
  Time: 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<s:actionmessage/>--%>
<%--登陆成功！访问次数：<s:property value="count"/>--%>

本站访问次数为：<s:property value="#application.counter"/><br>
<s:property value="#session.user"/>，
<s:property value="#request.tip"/>
</body>
</html>
