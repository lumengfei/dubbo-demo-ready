<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/resource/bootstrap-4.3.1/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1/jquery.js" ></script>
<script type="text/javascript" src="/resource/bootstrap-4.3.1/js/bootstrap.js"></script>
<script type="text/javascript" src="/resource/js/jqueryvalidate/jquery.validate.js"></script>
<script type="text/javascript" src="/resource/js/jqueryvalidate/localization/messages_zh.js"></script>
</head>
<body>
        <table>
        	<thead>
        		<tr>
        			<td>ID</td>
        			<td>标题</td>
        			<td>发表时间</td>
        			<td>作者Id</td>
        			<td>评论数量</td>
        		</tr>
        	</thead>
        	<tbody>
        		<c:forEach items="${list}" var="art">
        			<tr>
        				<td>${art.id }</td>
        				<td>${art.title }</td>
        				<td>${art.created }</td>
        				<td>${art.user_id }</td>
        				<td>${art.commentCnt}</td>
        			</tr>
        		</c:forEach>
        	</tbody>
        </table>
</body>
</html>