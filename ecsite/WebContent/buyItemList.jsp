<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>BuyItemList画面</title>
</head>
<body>

	<div id="header">
	</div>
	
	<div id="main">
		<div id="top">
			<p>商品一覧</p>
		</div>
		
		<div>
			<s:iterator></s:iterator>
		</div>
	</div>

</body>
</html>