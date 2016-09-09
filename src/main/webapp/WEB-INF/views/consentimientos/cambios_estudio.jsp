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

	<div class="content">
		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<h2 class="pull-left">
					<i class="icon-pencil"></i>
					<fmt:message key="consents.menu" />
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
									<div class="pull-left"><fmt:message key="chgest" /></div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
										<a href="#" class="wclose"><i class="icon-remove"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget-content">
									<div class="padd">
										<!-- Curve chart (Blue color). jQuery Flot plugin used. -->
										<div id="curve-chart"></div>
										<div class="widget-foot"></div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">						
							<div class="widget">
								<div class="widget-head">
									<div class="pull-left">
										<fmt:message key="chgest" />
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
												<th><fmt:message key="tablas.fecha" /></th>
												<th><fmt:message key="tablas.total" /></th>
											</tr>
										</thead>
										<c:forEach items="${conteoCambios}" var="cambios">
											<tr>
												<td><c:out value="${cambios[0]}" /></td>
												<td><c:out value="${cambios[1]}" /></td>
											</tr>
										</c:forEach>
									</table>
									<div class="widget-foot">
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-8">

							<div class="widget">

								<div class="widget-head">
									<div class="pull-left">
										<fmt:message key="chgest" />
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
										id="tabla1">
										<thead>
											<tr>
												<th><fmt:message key="consentimientos.codigo" /></th>
												<th><fmt:message key="consentimientos.fecha" /></th>
												<th><fmt:message key="consentimientos.parteainf" /></th>
												<th><fmt:message key="consentimientos.rechazo" /></th>
												<th><fmt:message key="consentimientos.asen" /></th>
												<th><fmt:message key="consentimientos.firma" /></th>
												<th><fmt:message key="consentimientos.relfam" /></th>
												<th><fmt:message key="consentimientos.recurso" /></th>
											</tr>
										</thead>
										<c:forEach items="${cambios}" var="cambios">
											<tr>
												<td><c:out
														value="${cambios.cambioEstudioId.codigo}" /></td>
												<td><c:out
														value="${cambios.cambioEstudioId.fechaCambio}" /></td>
												<td><c:out value="${cambios.parteAFlu}" /></td>
												<td><c:out value="${cambios.rechazoFlu}" /></td>
												<td><c:out value="${cambios.asentimiento}" /></td>
												<td><c:out value="${cambios.firmcarta}" /></td>
												<td><c:out value="${cambios.relacionFam}" /></td>
												<td><c:out value="${cambios.movilInfo.recurso1}" /></td>
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
	</div>
	<!-- Footer starts -->
	<jsp:include page="../fragments/footer.jsp" />
	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>
	<jsp:include page="../fragments/scripts.jsp" />
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#tabla').dataTable({
				"iDisplayLength" : 10,
				"aLengthMenu" : [ [ 5, 10, 25, 50, 100, -1 ],
						[ 5, 10, 25, 50, 100, "Todos" ] ]
			});
			$('#tabla1').dataTable({
				"iDisplayLength" : 10,
				"aLengthMenu" : [ [ 5, 10, 25, 50, 100, -1 ],
						[ 5, 10, 25, 50, 100, "Todos" ] ]
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {

			var cambioest = [];
			var fechas = [];
			<c:forEach var="conteoCambio" items="${conteoCambios}">
				fechas.push([ "${conteoCambio[0]}" ]);
				cambioest.push([ "${conteoCambio[0]}", "${conteoCambio[1]}" ]);
			</c:forEach>

			var plot = $.plot("#curve-chart", [ {
				data : cambioest,
				label : "Cambios de estudio"
			}], {
				series : {
					lines: { show: true, fill: true},
					points : {
						show : true
					}
				},
				grid: { hoverable: true, clickable: true, borderWidth:0 },
				xaxis: {
					mode: "categories",
					tickLength: 0
				},
				colors: ["#fbdb65"]
			});

			$("<div id='tooltip'></div>").css({
				position : "absolute",
				display : "none",
				border : "1px solid #fdd",
				padding : "2px",
				"background-color" : "#fee",
				opacity : 0.80
			}).appendTo("body");

			$("#curve-chart")
					.bind(
							"plothover",
							function(event, pos, item) {

								/*if ($("#enableTooltip:checked").length > 0) {*/
									if (item) {
										var x = item.datapoint[0], y = item.datapoint[1];
										$("#tooltip").html(
												fechas[x] + "<br/>" + "<strong>" + y + "</strong>").css({
											top : item.pageY + 5,
											left : item.pageX + 5
										}).fadeIn(200);
									} else {
										$("#tooltip").hide();
									}
								/*}*/
							});
		});
	</script>
</body>
</html>