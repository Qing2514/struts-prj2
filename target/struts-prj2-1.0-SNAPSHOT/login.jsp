<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:actionerror/>
<s:fielderror/>

<%--1.method属性指定方法名--%>
<%--<form action="login" method="post">--%>
<%--    account：<input name="loginUser.account" type="text"><br>--%>
<%--    password：<input name="loginUser.password" type="password">--%>
<%--    <input type="submit" value="登录">--%>
<%--</form>--%>

<%--2.动态方法调用方式（DMI）--%>
<%--<s:form action="UserAction!login" method="post">--%>
<%--    account：<input name="loginUser.account" type="text"><br>--%>
<%--    password：<input name="loginUser.password" type="password">--%>
<%--    <input type="submit" value="登录">--%>
<%--</s:form>--%>

<%--3.使用提交按钮的method属性--%>
<%--<s:form action="UserAction" method="post">--%>
<%--    account：<input name="loginUser.account" type="text"><br>--%>
<%--    password：<input name="loginUser.password" type="password">--%>
<%--    <s:submit value="登录" method="login"/>--%>
<%--</s:form>--%>

<%--4.使用通配符配置Action--%>
<%--<s:form action="loginAction" method="post">--%>
<%--    account：<input name="loginUser.account" type="text"><br>--%>
<%--    password：<input name="loginUser.password" type="password">--%>
<%--    <input type="submit" value="登录">--%>
<%--</s:form>--%>

<s:form action="login" method="post">
    <s:textfield name="loginUser.account" key="login.account.lable"/>
    <s:password name="loginUser.password" key="login.password.lable"/>
    <s:submit key="login.submit.button"/>
</s:form>

</body>
</html>