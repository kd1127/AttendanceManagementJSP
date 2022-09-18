<%@page import="beans.InputBean"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bn" scope="session" class="beans.InputBean"/>

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
		
		<% String space = ""; %>
		<% String ayear = (String)session.getAttribute("ayear"); %>
		<% String amonth = (String)session.getAttribute("amonth"); %>
		<% String aday = (String)session.getAttribute("aday"); %>
		<% String sthour = (String)session.getAttribute("sthour"); %>
		<% String stminute = (String)session.getAttribute("stminute"); %>
		<% String endhour = (String)session.getAttribute("endhour"); %>
		<% String endminute = (String)session.getAttribute("endminute"); %>
		
		<% List<String> eMessage = (List<String>)request.getAttribute("eMessage");
		   if(eMessage != null){%>
		   <div class="box">
		   			<% for(String msg : eMessage){ %>
		   				<%= msg %><br>
		   			<% } %>
		   </div>
		<% } %>
		
		<% String str = (String)request.getAttribute("str"); %>
			
		<% if(str == "register_page"){
				 bn = new InputBean(); %>
		<% }  %>
		
		<form action="../servlet/admin.InputAction" method="post">
			<table class="tbeinput">
				<tr>
					<td>講座番号 <span class="notcss">※</span>　</td>
					<td><input type="text" name="anumber" value="<%= bn.getAnumber() %>"/></td>
				</tr>
				<tr>
					<td>講座名 <span class="notcss">※</span>　　</td>
					<td><input type="text" name="aname" value="<%= bn.getAname() %>"/></td>
				</tr>
				<tr>
					<td>講座開催日 <span class="notcss">※</span></td>
					<td>
						<select name="ayear" class="inposition">
							<% if(ayear != null && ayear != "0"){ %>
									<option value="<%= bn.getAyear() %>" selected="selected"><%= bn.getAyear() %></option>
							<% } else { %>
								<% 
									int year = LocalDate.now().getYear();
									for(int i=year; i<year+5; i++){ 
								%>
										<option value="<%= i %>" selected="selected"><%= i %></option>
									<% } %>
								
								<option value="ayear" selected="selected"></option>
							<% } %>
						</select>年
						
						<select name="amonth" class="resize">
							<% if(amonth != null && amonth != "0"){ %>
									<option value="<%= bn.getAmonth() %>" selected="selected"><%= bn.getAmonth() %></option>
							<% } else { %>
								<% 
									for(int i=1; i<=12; i++){ 
								%>
									<option value="<%= i %>" selected="selected"><%= i %></option>
								<% } %>
								<option value="amonth" selected="selected"></option>
							<% }  %>
						</select>月
						
						<select name="aday" class="resize">
							<% if(aday != null && aday != "0"){ %>
									<option value="<%= bn.getAday() %>" selected="selected"><%= bn.getAday() %></option>
							<% } else { %>
								<% 
									for(int i=1; i<=31; i++){ 
								%>
									<option value="<%= i %>" selected="selected"><%= i %></option>
								<% } %>
								<option value="aday" selected="selected"></option>
							<% } %>
						</select>日
					</td>
				</tr>
				<tr>
					<td>開始時刻 <span class="notcss">※</span>　</td>
					<td>
						<select name="sthour" class="inposition2">
							<% if(sthour != null && sthour != "0"){ %>
									<option value="<%= bn.getSthour() %>" selected="selected"><%= bn.getSthour() %></option>
							<% } else { %>
								<% for(int i=10; i<=18; i++){ %>
									<option value="<%= i %>" selected="selected"><%= i %></option>
								<% } %>
								<option value="sthour" selected="selected"></option>
							<% } %>
						</select>時
						
						<select name="stminute" class="resize">
							<% int j = 0;
							   String stzero = "00";%>
							
							<% if(stminute != null && stminute != "00"){ %>
									<option value="<%= bn.getStminute() %>" selected="selected"><%= bn.getStminute() %></option>
							<% } else { %>
								<% while(j <= 30){ %>
									<% if(j == 0){ %>
											<option value="<%= stzero %>" selected="selected"><%= stzero %></option>
											<% j += 30; %>
									<% } else{ %>
											<option value="<%= j %>" selected="selected"><%= j %></option>
											<% j += 30; %>
									<% } %>
								<% } %>
								<option value="stminute" selected="selected"></option>
							<% } %>
						</select>分
					</td>
				</tr>
				<tr>
					<td>終了時刻 <span class="notcss">※</span>　</td>
					<td>
						<select name="endhour" class="inposition2">
							<% if(endhour != null && endhour != "0"){ %>
									<option value="<%= bn.getEndhour() %>" selected="selected"><%= bn.getEndhour() %></option>
							<% } else { %>
								<% for(int i=10; i<=18; i++){ %>
									<option value="<%= i %>" selected="selected"><%= i %></option>
								<% } %>
								<option value="endhour" selected="selected"></option>
							<% } %>
						</select>時
						
						<select name="endminute" class="resize">
							<% int k = 0; 
							   String endzero = "00"; %>
							<% if(endminute != null && endminute != "00"){ %>
									<option value="<%= bn.getEndminute() %>" selected="selected"><%= bn.getEndminute() %></option>
							<% } else { %>
								<% while(k <= 30){ %>
									<% if(k == 0){ %>
											<option value="<%= endzero %>" selected="selected"><%= endzero %></option>
											<% k += 30; %>
									<% } else{ %>
											<option value="<%= k %>" selected="selected"><%= k %></option>
											<% k += 30; %>
									<% } %>
								<% } %>
								<option value="endminute" selected="selected"></option>
							<% } %>
						</select>分
					</td>
				</tr>
				<tr>
					<td>定員 <span class="notcss">※</span>　　　</td>
					<% String text = "";
				    if(bn.getCapacity() == 0){ %>
				   		<td><input type="text" name="capacity" value="<%= text %>" class="inposition3"/>人</td>
				   	<% } else{ %>
				   		<td><input type="text" name="capacity" value="<%= bn.getCapacity() %>" class="inposition3"/>人</td>
				   	<% } %>
				</tr>
			</table>
			<div>			
				<input type="submit" name="back" value="戻る" class="button2"/>
				<input type="submit" name="next" value="確認" class="button2"/>	
			</div>
		</form>
		<% session.setAttribute("bn", bn); %>
		<p>senshin.co.jp</p>
	</body>
</html>