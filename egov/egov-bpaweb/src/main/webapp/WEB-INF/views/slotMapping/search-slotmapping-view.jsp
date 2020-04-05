<%--
  ~    eGov  SmartCity eGovernance suite aims to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) 2017  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~            Further, all user interfaces, including but not limited to citizen facing interfaces,
  ~            Urban Local Bodies interfaces, dashboards, mobile applications, of the program and any
  ~            derived works should carry eGovernments Foundation logo on the top right corner.
  ~
  ~            For the logo, please refer http://egovernments.org/html/logo/egov_logo.png.
  ~            For any further queries on attribution, including queries on brand guidelines,
  ~            please contact contact@egovernments.org
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  ~
  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/taglib/cdn.tld" prefix="cdn"%>

<form:form role="form" action="" modelAttribute="slotMapping"
	id="slotMappingSearchViewForm" cssClass="form-horizontal form-groups-bordered"
	enctype="multipart/form-data">
	<jsp:include page="slotmapping-search-form.jsp"></jsp:include>
	<div class="text-center">
		<button type='button' class='btn btn-primary' id="btnSearchForView">
			<spring:message code='lbl.search' />
		</button>
		<button type="reset" class="btn btn-danger">
			<spring:message code="lbl.reset" />
		</button>
		<a href='javascript:void(0)' class='btn btn-default'
			onclick='self.close()'><spring:message code='lbl.close' /></a>
	</div>
</form:form>

<div class="row display-hide report-section" id="table_container">
	<div class="col-md-12 table-header text-left"> <spring:message code="lbl.search.result"/> </div>
	<div class="col-md-12 form-group report-table-container">
		<table class="table table-bordered table-hover multiheadertbl"
			id="search_slotmapping_table">
			<thead>
				<tr>
					<th><spring:message code="lbl.zonal.office" /></th>
					<th><spring:message code="lbl.rev.ward" /></th>
					<th><spring:message code="lbl.election.ward" /></th>
					<th><spring:message code="lbl.slotmapping.applicationtype" /></th>
					<th><spring:message code="lbl.slotmapping.days" /></th>
					<th><spring:message
							code="lbl.slotmapping.numberofapplications" /></th>
					<th><spring:message
							code="lbl.slotmapping.numberofresapplications" /></th>
					<th><spring:message code="lbl.action" /></th>
				</tr>
			</thead>
		</table>
	</div>
</div>
<script
	src="<cdn:url value='/resources/global/js/bts/bts-datepicker.js' context='/egi'/>"></script>
<link rel="stylesheet"
	href="<cdn:url value='/resources/global/css/jq/plugins/datatables/jq.dataTables.min.css' context='/egi'/>" />
<link rel="stylesheet"
	href="<cdn:url value='/resources/global/css/jq/plugins/datatables/dataTables.bts.min.css' context='/egi'/>">
<script
	src="<cdn:url value='/resources/global/js/jq/plugins/datatables/jq.dataTables.min.js' context='/egi'/>"></script>
<script
	src="<cdn:url value='/resources/global/js/jq/plugins/datatables/responsive/js/datatables.responsive.js' context='/egi'/>"></script>
<script
	src="<cdn:url value='/resources/global/js/jq/plugins/datatables/dataTables.bts.js' context='/egi'/>"></script>

<script
	src="<cdn:url value='/resources/js/app/slotmapping-edit.js?rnd=${app_release_no}'/> "></script>

