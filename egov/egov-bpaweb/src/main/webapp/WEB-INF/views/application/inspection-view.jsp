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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<form:form role="form"  id="updateInspectionForm"
 action="/bpa/inspection/update/${inspectionApplication.applicationNumber}"
 method="post" modelAttribute="inspectionApplication"
			cssClass="form-horizontal form-groups-bordered"
			enctype="multipart/form-data">
<div class="panel-heading custom_form_panel_heading">
<div class="panel-title text-center no-float">
		<c:if test="${not empty message}">
			<strong>${message}</strong>
		</c:if>
</div>
</div>
			
<div class="row">
	<div class="col-md-12">	
		<form:hidden path="" id="workFlowAction" name="workFlowAction" />
			
		   <ul class="nav nav-tabs" id="settingstab">
				<li class="active"><a data-toggle="tab" href="#applicant-info"
									  data-tabidx=0><spring:message code='lbl.appln.details' /></a></li>
				
				<c:if test="${not empty inspectionApplication.inspections}">
					<li><a data-toggle="tab" href="#view-inspection" data-tabidx=3><spring:message
							code='lbl.inspection.appln' /></a></li>
				</c:if>
				<c:if test="${not empty lettertopartylist}">
					<li><a data-toggle="tab" href="#view-lp" data-tabidx=7><spring:message
							code='lbl.lp.details' /></a></li>
				</c:if>
			</ul>
      </br>
		  <div class="tab-content">
				<div id="applicant-info" class="tab-pane fade in active">
				   <div class="panel panel-primary" data-collapsed="0">
				  
						<div class="panel-heading custom_form_panel_heading">
							<div class="panel-title">
								<spring:message code="lbl.inspection.application" />
							</div>
						</div>
						 <div class="panel-body">
						<div class="row add-border">
							 <div class="col-sm-3 add-margin">
								<spring:message code="lbl.application.number" />
							</div>
							<div class="col-sm-3 add-margin view-content text-justify">
								<c:out
									value="${inspectionApplication.applicationNumber}"
									default="N/A"></c:out>
							</div>
							 <div class="col-sm-3 add-margin">
								<spring:message code="lbl.appln.date" />
							</div>
							<fmt:formatDate
								value="${inspectionApplication.applicationDate}"
								pattern="dd/MM/yyyy" var="applicationDate" />
							<div class="col-sm-3 add-margin view-content text-justify">
								<c:out value="${applicationDate}" default="N/A"></c:out>
							</div>
						</div>
						
						<div class="row add-border">
							 <div class="col-sm-3 add-margin">
								<spring:message code="lbl.status" />
							</div>
							<div class="col-sm-3 add-margin view-content text-justify">
								<c:out
									value="${inspectionApplication.status.code}"
									default="N/A"></c:out>
							</div>
							
							 <div class="col-sm-3 add-margin">
								<spring:message code="lbl.insp.bldngconststage" />
							</div>
							<div class="col-sm-3 add-margin view-content text-justify">
								<c:out
									value="${inspectionApplication.buildingConstructionStage.name}"
									default="N/A"></c:out>
							</div>
						</div>
						
						<div class="row add-border">
							 <div class="col-sm-3 add-margin">
								<spring:message code="lbl.applicant.remarks" />
							</div>
							<div class="col-sm-3 add-margin view-content text-justify">
								<c:out
									value="${inspectionApplication.remarks}"
									default="N/A"></c:out>
							</div>
						</div></div> </div>
		
		
		<div id="application-info" class="tab-pane fade in active">
		         <div class="panel panel-primary edcrApplnDetails" data-collapsed="0">
						<jsp:include page="edcr-application-details-form.jsp"></jsp:include>
				 </div>
				 
			 	  <div class="panel panel-primary" data-collapsed="0">
							<jsp:include page="view-application-details.jsp"></jsp:include>
						</div> 
			
				 <div class="panel panel-primary" data-collapsed="0">
						<jsp:include page="applicationhistory-view.jsp"></jsp:include>
					</div>
		</div></div>
		<c:if test="${not empty inspectionApplication.inspections}">
					<div id="view-inspection" class="tab-pane fade">
						<div class="panel panel-primary" data-collapsed="0">
							<jsp:include page="view-inconst-inspection-details.jsp"></jsp:include>
						</div>
						<c:if test="${null ne inspectionApplication.townSurveyorRemarks}">
							<c:if test="${'Town Surveyor Inspected' eq inspectionApplication.status.code}">
								<input type="hidden" id="viewTsRemarks" value="true">
							</c:if>
							<div class="panel panel-primary" data-collapsed="0">
								<jsp:include page="view-town-surveyor-remarks.jsp"></jsp:include>
							</div>
						</c:if>
					</div>
				</c:if>
				<c:if test="${not empty lettertopartylist}">
					<div id="view-lp" class="tab-pane fade">
						<div class="panel panel-primary" data-collapsed="0">
							<jsp:include page="../lettertoparty/ins-lettertoparty-details.jsp"></jsp:include>
						</div>
					</div>
				</c:if>
		</div>
				
				<input	type="hidden" id="submitApplication" value="<spring:message code='msg.portal.submit.appln'/>" /> 
			    <input	type="hidden" id="applicationNumber" value="" /> 
			    <input type="hidden" id="eDcrNumber" value="${eDcrNumber}"/>
			    <input type="hidden" id="planPermissionNumber" value="${planPermissionNumber}"/>
			    
					<div class="buttonbottom" align="center">
						<input type="button" name="button2" value="Close"
							class="btn btn-default" onclick="window.close();" />
					</div>
					</div>
					</div>
</form:form>

	
<script
	src="<c:url value='/resources/global/js/bootstrap/bootstrap-tagsinput.min.js?rnd=${app_release_no}' context='/egi'/>"></script>
<script
	src="<c:url value='/resources/global/js/handlebars/handlebars.js?rnd=${app_release_no}' context='/egi'/>"></script>
<script
	src="<cdn:url value='/resources/global/js/egov/inbox.js?rnd=${app_release_no}' context='/egi'/>"></script>
<script	
	src="<cdn:url value='/resources/js/app/inspection-edcr-helper.js?rnd=${app_release_no}'/>"></script>
<script	
	src="<cdn:url value='/resources/js/app/inspection-edit.js?rnd=${app_release_no}'/>"></script>
<script	
	src="<cdn:url value='/resources/js/app/inspection-view.js?rnd=${app_release_no}'/>"></script>
<link rel="stylesheet"
		href="<c:url value='/resources/css/bpa-style.css?rnd=${app_release_no}'/>">		
	