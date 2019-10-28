<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>UserDetailsAction</title>
</head>
<body>

	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>userDetails</p>
		</div>

		<div>
			<s:if test="userInfoDTO == null">
				<h3>ユーザーの情報はありません。</h3>
			</s:if>

			<s:else>
				<h3>ユーザー情報は以下になります。</h3>

				<table border="1">
					<tr>
						<th>id</th>
						<td><s:property value="userInfoDTO.id" /></td>
					</tr>
					<tr>
						<th>ログインID</th>
						<td><s:property value="userInfoDTO.loginId" /></td>
					</tr>
					<tr>
						<th>ログインPASS</th>
						<td><s:property value="userInfoDTO.loginPass" /></td>
					</tr>
					<tr>
						<th>ユーザー名</th>
						<td><s:property value="userInfoDTO.userName" /></td>
					</tr>
					<tr>
						<th>登録日</th>
						<td><s:property value="userInfoDTO.insertDate" /></td>
					</tr>
					<tr>
						<th>更新日</th>
						<td><s:property value="userInfoDTO.updateDate" /></td>
					</tr>
				</table>

				<s:form action="UserDeleteConfirmAction">
					<s:submit value="削除" />
					<s:hidden name="loginId" value="%{loginId}" />
				</s:form>

				<div id="text-right">
					<p><a href="admin.jsp">管理者TOPへ</a></p>
				</div>
			</s:else>
		</div>
	</div>

	<div id="footer">
	</div>

</body>
</html>