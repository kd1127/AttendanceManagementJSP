<%@page import="admin.InputBean"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bn" scope="session" class="admin.InputBean"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>講座登録</title>
		<link rel="stylesheet" href="../CSS/layout.css"/>
	</head>
	<body>
		<h1 class="title">講座登録</h1>
		<p class="caution">※は入力必須です。</p>
		
		<% List<String> eMessage = (List<String>)request.getAttribute("eMessage");
		   if(eMessage != null){%>
		   <div class="box">
		   			<% for(String msg : eMessage){ %>
		   			<%= msg %><br>
		   			<% } %>
		   </div>
		<% } %>
		
		<!-- 以下テストプログラム -->
		<% String str = (String)request.getAttribute("str"); %>
			
		<% if(str == "register_page"){
				 bn = new InputBean(); %>
		<% }  %>
		<!-- ここまで -->
		
		<form action="../servlet/admin.InputAction" method="post">
			<table class="tbeinput">
				<tr>
					<td>講座番号 <span>※</span>　</td>
					<td><input type="text" name="anumber" value="<%= bn.getAnumber() %>"/></td>
				</tr>
				<tr>
					<td>講座名 <span>※</span>　　</td>
					<td><input type="text" name="aname" value="<%= bn.getAname() %>"/></td>
				</tr>
				<tr>
					<td>講座開催日 <span>※</span></td>
					<td>
						<select name="ayear">
							<% 
								int year = LocalDate.now().getYear();
								for(int i=year; i<year+5; i++){ 
							%>
								<option value="<%= i %>" selected="selected"><%= i %></option>
							<% } %>
							<option value="ayear" selected="selected"></option>
						</select>年
						
						<select name="amonth">
							<% 
								for(int i=1; i<=12; i++){ 
							%>
								<option value="<%= i %>" selected="selected"><%= i %></option>
							<% } %>
							<option value="amonth" selected="selected"></option>
						</select>月
						
						<select name="aday">
							<% 
								for(int i=1; i<=31; i++){ 
							%>
								<option value="<%= i %>" selected="selected"><%= i %></option>
							<% } %>
							<option value="aday" selected="selected"></option>
						</select>日
					</td>
				</tr>
				<tr>
					<td>開始時刻 <span>※</span>　</td>
					<td>
						<select name="sthour">
							<% for(int i=10; i<=18; i++){ %>
								<option value="<%= i %>" selected="selected"><%= i %></option>
							<% } %>
							<option value="sthour" selected="selected"></option>
						</select>時
						
						<select name="stminute">
							<% int j = 0; %>
							<% while(j <= 30){ %>
								<option value="<%= j %>" selected="selected"><%= j %></option>
								<% j += 30;
							} %>
								<option value="stminute" selected="selected"></option>
						</select>分
					</td>
				</tr>
				<tr>
					<td>終了時刻 <span>※</span>　</td>
					<td>
						<select name="endhour">
							<% for(int i=10; i<=18; i++){ %>
								<option value="<%= i %>" selected="selected"><%= i %></option>
							<% } %>
							<option value="endhour" selected="selected"></option>
						</select>時
						
						<select name="endminute">
							<% int k = 0; %>
							<% while(k <= 30){ %>
								<option value="<%= k %>" selected="selected"><%= k %></option>
								<% k += 30;
							} %>
								<option value="endminute" selected="selected"></option>
						</select>分
					</td>
				</tr>
				<tr>
					<td>定員 <span>※</span>　　　</td>
					<% String text = "";
				    if(bn.getCapacity() == 0){ %>
				   		<td><input type="text" name="capacity" value="<%= text %>"/>人</td>
				   	<% } else{ %>
				   		<td><input type="text" name="capacity" value="<%= bn.getCapacity() %>"/>人</td>
				   	<% } %>
				</tr>
			</table>
			<div>			
				<input type="submit" name="back" value="戻る" class="button2"/>
				<input type="submit" name="next" value="確認" class="button2"/>	
			</div>
		</form>
		<% session.setAttribute("bn", bn); %>
	</body>
</html>