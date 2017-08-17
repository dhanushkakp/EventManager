<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<style>
body {
	padding-top: 60px; /* 60px to make the container go all the way
      to the bottom of the topbar */
}
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
      </script>
    <![endif]-->
<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<style>
.errorText {
	color: #ff0000;
}

.errorbanner {
	color: #000000;
	background-color: #ffeeee;
	border: 3px solid #ff0000;
	margin: 16px;
	padding: 8px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>


</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#"> Add Event </a>
				<ul class="nav">
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div>
			<h1>Add Event</h1>
			<p>
				Add your event <br> &nbsp;
			</p>
		</div>
		<form:form commandName="event">
			<form:errors path="*" cssClass="errorbanner" element="div" />
			<div>
				<h1>Add an Event</h1>
			</div>
			<div>Enter Event</div>
			<div>
				<form:input path="eventName" cssErrorClass="errorText" />
			</div>
			<div>
				<form:select path="eventType" id="eventtypes"></form:select>
			</div>
			<div>
				<input type="submit" value="Save">
			</div>
		</form:form>
		<div class="control-group"></div>
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.getJSON(
											'http://localhost:8080/eventManager/getEventTypes.json',
											{
												ajax : 'true'
											},
											function(data) {
												var html = '<option value=""> -- Select type -- </option>';
												var len = data.length;
												for (var i = 0; i < len; i++) {
													html += '<option value='+data[i].eventType+'>'
															+ data[i].eventType
															+ '</option>';

												}
												$('#eventtypes').html(html);
											})
						})
	</script>

</body>
</html>