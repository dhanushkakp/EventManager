<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<style type="text/css">
table.gridtable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}

table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

h3 {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}

table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>



<body>
	<center>
		<h3>Summary of Events</h3>
		<table class="gridtable">
			<tr>
				<th>Event Id</th>
				<th>Event Name</th>
				<th colspan="2">Event Type</th>
			</tr>
			<c:forEach items="${events}" var="event">
				<tr>
					<td>${event.id}</td>
					<td>${event.eventName}</td>
					<td>${event.eventType}</td>
					<td>
						<table class="gridtable">
							<tr>
								<th>Activity Id</th>
								<th>Activity Name</th>
							</tr>
							<c:forEach items="${event.activities}" var="activity">
								<tr>
									<td>${activity.id}</td>
									<td>${activity.activityName}</td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>