<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>UserList画面</title>
</head>
<body>

	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>UserList</p>
		</div>

		<div>
			<s:if test="userList == null">
				<h3>ユーザー情報はありません。</h3>
			</s:if>

			<s:else>
				<h3>ユーザー情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>ID</th>
						<th>ログインID</th>
						<th>ログインPASS</th>
						<th>ユーザー名</th>
						<th>登録日</th>
						<th>更新日</th>
						<th>詳細</th>
					</tr>
					<s:iterator value="userList">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="loginId" /></td>
							<td><s:property value="loginPass" /></td>
							<td><s:property value="userName" /></td>
							<td><s:property value="insertDate" /></td>
							<td><s:property value="updateDate" /></td>
							<td>
								<a href='<s:url action="UserDetailsAction">
								<s:param name="loginId" value="%{loginId}" />
								</s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:else>
			<div id="text-right">
				<p><a href='<s:url action="AdminAction" />'>管理者TOPへ</a></p>
			</div>
		</div>
	</div>

	<div id="footer">
	</div>

</body>
</html>