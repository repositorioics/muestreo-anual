<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<jsp:include page="../fragments/headTag.jsp" />
</head>
<body>
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<jsp:include page="../fragments/bodyNavigation.jsp" />
	<!-- Main bar -->
	<div class="mainbar">

		<!-- Page heading -->
		<div class="page-head">
			<h2 class="pull-left">
				<i class="icon-ok"></i>
				<fmt:message key="ccalidad.comprojo" />
			</h2>

			<!-- Breadcrumb -->
			<div class="bread-crumb pull-right">
				<a href="<spring:url value="/" htmlEscape="true" />"><i
					class="icon-home"></i> <fmt:message key="home" /></a>
			</div>

			<div class="clearfix"></div>
		</div>
		<!-- Page heading ends -->
		<!-- Matter -->

		<div class="matter">
			<div class="container">

				<!-- Table -->

				<div class="row">

					<div class="col-md-12">

						<div class="widget">

							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo1" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.lugar" /></th>
											<th><fmt:message key="tubo.vol" /></th>
											<th><fmt:message key="tubo.obs" /></th>
											<th><fmt:message key="tubo.sup" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojosupnoesthoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
											<td><c:out value="${rojos[5]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>
						</div>
						<div class="widget">

							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo2" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla2">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.lugar" /></th>
											<th><fmt:message key="tubo.vol" /></th>
											<th><fmt:message key="tubo.obs" /></th>
											<th><fmt:message key="tubo.sup" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojosupnolabhoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
											<td><c:out value="${rojos[5]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>
						</div>
						<div class="widget">
							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo3" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla3">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.pin" /></th>
											<th><fmt:message key="tubo.rec1" /></th>
											<th><fmt:message key="tubo.rec2" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojoestnosuphoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>


						</div>

						<div class="widget">

							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo4" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla4">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.pin" /></th>
											<th><fmt:message key="tubo.rec1" /></th>
											<th><fmt:message key="tubo.rec2" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojoestnolabhoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>
						</div>
						<div class="widget">

							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo5" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla5">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.vol" /></th>
											<th><fmt:message key="tubo.obs" /></th>
											<th><fmt:message key="tubo.lab" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojolabnosuphoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>
						</div>
						<div class="widget">
							<div class="widget-head">
								<div class="pull-left">
									<fmt:message key="ccalidad.comprojo6" />
								</div>
								<div class="widget-icons pull-right">
									<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
									<a href="#" class="wclose"><i class="icon-remove"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="widget-content">
								<br />
								<table class="table table-striped table-bordered table-hover"
									id="tabla6">
									<thead>
										<tr>
											<th><fmt:message key="tubo.codigo" /></th>
											<th><fmt:message key="tubo.fecha" /></th>
											<th><fmt:message key="tubo.vol" /></th>
											<th><fmt:message key="tubo.obs" /></th>
											<th><fmt:message key="tubo.lab" /></th>
										</tr>
									</thead>
									<c:forEach items="${rojolabnoesthoy}" var="rojos">
										<tr>
											<td><c:out value="${rojos[0]}" /></td>
											<td><c:out value="${rojos[1]}" /></td>
											<td><c:out value="${rojos[2]}" /></td>
											<td><c:out value="${rojos[3]}" /></td>
											<td><c:out value="${rojos[4]}" /></td>
										</tr>
									</c:forEach>
								</table>
								<div class="widget-foot"></div>
							</div>


						</div>

					</div>
				</div>


			</div>
			<!-- Matter ends -->
		</div>
		<!-- Mainbar ends -->
		<div class="clearfix"></div>

	</div>

	<!-- Content ends -->
	<!-- Footer starts -->
	<jsp:include page="../fragments/footer.jsp" />
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
	<jsp:include page="../fragments/scripts.jsp" />
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#tabla').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
			$('#tabla2').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
			$('#tabla3').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
			$('#tabla4').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
			$('#tabla5').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
			$('#tabla6').dataTable({
				"iDisplayLength": 5,
				"aLengthMenu": [[5,10, 25, 50, 100, -1], [5,10, 25, 50, 100, "Todos"]]
			});
		});
	</script>
</body>
</html>