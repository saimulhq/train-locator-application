<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

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
	<div class="container">
		<form method="POST" action="${contextPath}/login" class="form-signin">
			<h2 class="form-heading">Train Locator</h2>

			<h2 class="form-signin-heading">Log in</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span> <input name="username" type="email"
					class="form-control" placeholder="Email" autofocus="true" /> <input
					name="password" type="password" class="form-control"
					placeholder="Password" /> <span>${error}</span> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">Log
					In</button>
				<h4 class="create-account">
					<a href="${contextPath}/registration">Create an account</a>
				</h4>
			</div>
		</form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>