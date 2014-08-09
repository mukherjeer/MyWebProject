<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

	<sql:update var="allPlayers" dataSource="jdbc/PlayerList" >
		    INSERT INTO Players (first_name, last_name, email_id, twitter_id, stage_name, catch_phrase, mini_bio) VALUES (?, ?, ?, ?, ?, ?, ?)
		    <sql:param value='${param["fname"]}'/>
		    <sql:param value='${param["lname"]}'/>
		    <sql:param value='${param["emailid"]}'/>
		    <sql:param value='${param["tweetid"]}'/>
		    <sql:param value='${param["sname"]}'/>
		    <sql:param value='${param["cphrase"]}'/>
		    <sql:param value='${param["minibio"]}'/>
	</sql:update>
	
	
	<sql:query var ="rs" dataSource="jdbc/PlayerList">
		select stage_name, catch_phrase, mini_bio from Players
	</sql:query>
	
<html>
<body>
	<table style="width:300px">
		<tr>
		  <td>STAGE NAME</td>
		  <td>CATCH PHRASE</td> 
		  <td>MINI BIO</td>
		</tr>
		
		<c:forEach var="row" items="${rs.rows}">
			<tr>
				<td>
					${row.stage_name}<br/>
				</td>
		    	<td>
		    	 	${row.catch_phrase}<br/>
		    	</td>
		    	<td>
		    		${row.mini_bio}<br/>
				</td>
			</tr>
		</c:forEach>		
	</table>

</body>
</html>