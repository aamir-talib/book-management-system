<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:mainLayout>
	<jsp:body>
		<div class="error-page">
			<br />
			<span class="error-code">400</span>
			<p class="lead">
				Ah! Bad Request.
			</p>
		</div>
	</jsp:body>
</layout:mainLayout>