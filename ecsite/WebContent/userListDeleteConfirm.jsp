<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>UserListDeleteConfirm画面</title>
</head>
<body>

	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>UserListDeleteConfirm</p>
		</div>

		<div>
			<h3>管理者以外のユーザーを削除します。よろしいですか？</h3>

			<table>
				<tr>
					<td>
						<s:form action="UserListDeleteCompleteAction">
							<s:submit value="ＯＫ" />
						</s:form>
					</td>
					<td>
						<s:form action="UserListAction">
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