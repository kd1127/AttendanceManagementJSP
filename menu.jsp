<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>講座管理メニュー</title>
		<link rel="stylesheet" href="../CSS/layout.css"/>
	</head>
	<body>
		<h1 class="title">講座管理メニュー</h1>
		
		<p class="headline">「講座登録」または「講座修正削除」ボタンを押してください。</p>
		
		<form action="../servlet/admin.WelcomeAction" method="get">
			<table>
				<tr>
					<td><input type="submit" value="講座登録" name="register" class="button"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="講座修正削除" name="remFix" class="button"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>