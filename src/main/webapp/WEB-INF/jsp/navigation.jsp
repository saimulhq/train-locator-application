<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="${contextPath}/home">Train Locator</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="nav navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="${contextPath}/profile/${pageContext.request.userPrincipal.name}">Profile
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"
				onclick="document.forms['logoutForm'].submit()">Logout</a></li>
		</ul>
	</div>
</nav>

<div class="container">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</c:if>
</div>
