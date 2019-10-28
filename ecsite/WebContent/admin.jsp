<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>Admin画面</title>
</head>
<body>

	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>管理者画面</p>
		</div>

		<div id="text-center">
		<div id="left">
			<p>商品</p>
			<div id="listbox">
				<s:form action="ItemCreateAction">
					<s:submit value="新規登録" />
				</s:form>
				<br />
				<s:form action="ItemListAction">
					<s:submit value="一覧" />
				</s:form>
			</div>
		</div>

		<div id="right">
			<p>ユーザー</p>
			<div id="listbox">
				<s:form action="UserCreateAction">
					<s:submit value="新規登録" />
				</s:form>
				<br />
				<s:form action="UserListAction">
					<s:submit value="一覧" />
				</s:form>
			</div>
		</div>
		</div>
	</div>

	<div id="clear">
	</div>

	<div id="footer">
	</div>

</body>
</html>