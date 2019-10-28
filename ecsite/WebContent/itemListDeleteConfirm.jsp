<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>ItemListDeleteConfirm画面</title>
</head>
<body>

	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>ItemListDeleteConfirm</p>
		</div>

		<div>
			<h3>すべての商品を削除します。よろしいですか？</h3>

			<table>
				<tr>
					<td>
						<s:form action="ItemListDeleteCompleteAction">
							<s:submit value="ＯＫ" />
						</s:form>
					</td>
					<td>
						<s:form action="ItemListAction">
							<s:submit value="キャンセル" />
						</s:form>
					</td>
			</table>

		</div>
	</div>

	<div id="footer">
	</div>

</body>
</html>