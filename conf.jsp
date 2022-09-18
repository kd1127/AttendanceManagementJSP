<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bn" scope="session" class="beans.InputBean"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登録確認</title>
		<link rel="stylesheet" href="../CSS/layout.css"/>
	</head>
	<body>
		<h1 class="title">登録確認</h1>
		<p class="caution">※入力内容を確認してください。</p>
		
		<form action="../servlet/admin.ConfAction" method="post">
			<table class="conftbl">	<!-- cssを変更 -->
				<tr>
					<td>講座番号　</td>
					<td><div><span class="position"><jsp:getProperty property="anumber" name="bn"/></span></div></td>
				</tr>
				<tr>
					<td>講座名　　</td>
					<td><div class="fontdeco"><jsp:getProperty property="aname" name="bn"/></div></td>
				</tr>
				<tr>
					<td>講座開催日</td>
					<td>
						　　　<span class="fontcolor"><jsp:getProperty property="ayear" name="bn"/></span>年
						<span class="fontcolor"><jsp:getProperty property="amonth" name="bn"/></span>月
						<span class="fontcolor"><jsp:getProperty property="aday" name="bn"/></span>日
					</td>
				</tr>
				<tr>
					<td>開始時刻　</td>
					<td>
						　　 <span class="position3"><jsp:getProperty property="sthour" name="bn"/></span>時
						<span class="position3"><jsp:getProperty property="stminute" name="bn"/></span>分
					</td>
				</tr>
				<tr>
					<td>終了時刻　</td>
					<td>
						　　 <span class="position3"><jsp:getProperty property="endhour" name="bn"/></span>時
						<span class="position4"><jsp:getProperty property="endminute" name="bn"/></span>分
					</td>
				</tr>
				<tr>
					<td>定員　　　</td>
					<td><span class="position2"><jsp:getProperty property="capacity" name="bn"/></span>人</td>
				</tr>
			</table>
			<div>
				<input type="submit" value="戻る" name="back" class="button3"/>
				<input type="submit" value="登録" name="register" class="button3"/>
			</div>
			<% session.setAttribute("bn", bn); %>
		</form>
	</body>
</html>