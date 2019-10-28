<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>UserDeleteConfirmAction</title>
</head>
<body>

	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>UserDeleteConfirmAction</p>
		</div>

		<div>
			<h3>ログインID[<s:property value="loginId" />]のユーザーを削除します。よろしいですか？</h3>

			<table>
				<tr>
					<td>
						<s:form action="UserDeleteCompleteAction">
							<s:hidden name="loginId" value="%{loginId}" />
							<s:submit value="ＯＫ" />
						</s:form>
					</td>
					<td>
						<s:form action="UserDetailsAction">
							<s:hidden name="loginId" value="%{loginId}" />
							<s:submit value="キャンセル" />
						</s:form>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="footer">
	</div>

</body>
</html>