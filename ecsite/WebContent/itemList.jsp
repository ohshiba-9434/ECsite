<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>ItemList画面</title>
</head>
<body>

	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>ItemList</p>
		</div>
		<div>
			<s:if test="itemList == null">
				<h3>商品情報はありません。</h3>
			</s:if>
			<s:else>
				<h3>商品情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>商品ID</th>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫数</th>
						<th>入荷日</th>
						<th>更新日</th>
					</tr>
					<s:iterator value="itemList">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /><span>円</span></td>
							<td><s:property value="itemStock" /><span>個</span></td>
							<td><s:property value="insertDate" /></td>
							<td><s:property value="updateDate"/></td>
							<td>
								<a href='<s:url action="ItemDetailsAction">
								<s:param name="id" value="%{id}" />
								</s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:else>

			<s:if test="message != null">
				<h3><s:property value="message" /></h3>
			</s:if>
			<div id="text-right">
				<p><a href='<s:url action="AdminAction" />'>管理者TOPへ</a></p>
			</div>
		</div>
	</div>
	<div id="footer">
	</div>

</body>
</html>