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

	<div class="trainDataTable">
		<table class="table table-bordered" id="train-location-data">
			<thead class="thead-light">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Train Name</th>
					<th scope="col">Destination</th>
					<th scope="col">Speed</th>
					<th scope="col">Location Coordinates</th>
				</tr>
			</thead>
			<tbody>
				<!-- to be filled with javascript -->
			</tbody>
		</table>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script src="/js/tableLoader.js"></script>
</body>
</html>