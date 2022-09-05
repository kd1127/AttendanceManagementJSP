<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登録完了</title>
		<link rel="stylesheet" href="../CSS/layout.css"/>
	</head>
	<body>
		<h1 class="title">登録完了</h1>
		
		<p class="headline2">講座登録を完了しました。</p>
		
		<form action="../servlet/admin.EndAction" method="get">
			<table>
				<tr>
					<td><input type="submit" value="講座管理メニュー" name="BacktoTop"  class="button4"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="追加登録" name="addition"  class="button4"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>