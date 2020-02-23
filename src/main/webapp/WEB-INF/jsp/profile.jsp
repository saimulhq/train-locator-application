<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Train Locator</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="navigation.jsp" />

	<div class="userInfo">
		<table class="table table-borderless">
			<tbody>
				<tr>
					<td><b>Full Name: </b></td>
					<td>${user.fullName}</td>
				</tr>
				<tr>
					<td><b>Username: </b></td>
					<td>${user.username}</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>