<%--
  ~ eGov suite of products aim to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) <2017>  eGovernments Foundation
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
  --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/taglib/cdn.tld" prefix="cdn" %>
<form:form role="form" action=""
	modelAttribute="searchBpaApplicationForm" id="serviceTypeWiseStatusReport" cssClass="form-horizontal form-groups-bordered" enctype="multipart/form-data">
	<div class="col-md-12">
	        <div class="panel panel-primary" data-collapsed="0">
	            <div class="panel-heading">
	            </div>
	            <div class="panel-body">	
	                <div class="form-group">
	                    <label class="col-sm-3 control-label text-right"><spring:message
	                            code="lbl.applctn.type"/></label> 
	                    <div class="col-sm-3 add-margin">
	                        <form:select path="applicationTypeId" data-first-option="false"
	                                     id="applicationTypeId" cssClass="form-control applicationType" required="required">
	                            <form:option value="">
	                                <spring:message code="lbl.select"/>
	                            </form:option>
	                            <form:options items="${appTypes}" itemLabel="description" itemValue="id"/>
	                        </form:select>
	                    </div>
	                    <label class="col-sm-2 control-label text-right"><spring:message
	                            code="lbl.service.type"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:select path="serviceTypeId" data-first-option="false"
	                                     id="serviceTypeId" cssClass="form-control">
	                            <form:option value="">
	                                <spring:message code="lbl.select"/>
	                            </form:option>
	                            <form:options items="${serviceTypeList}" itemValue="id" itemLabel="description"/>
	                        </form:select>
	                    </div>
	                </div>
	
	                <div class="form-group">
	                       
 						<label class="col-sm-3 control-label text-right"><spring:message
	                            code="lbl.sectors.villages"/></label>
	                    <div class="col-sm-3 add-margin">
						 <form:input class="form-control patternvalidation" maxlength="50"
	                                    id="sector" path="sector"/>
	                        <form:errors path="sector" cssClass="add-margin error-msg"/>
	                    </div>
	                    <label class="col-sm-2 control-label text-right"><spring:message
	                            code="lbl.application.no"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:input class="form-control patternvalidation" maxlength="50"
	                                    id="applicationNumber" path="applicationNumber"/>
	                        <form:errors path="applicationNumber" cssClass="add-margin error-msg"/>
	                    </div>
	                </div>
					<div class="form-group">
 						<label class="col-sm-3 control-label text-right"><spring:message
	                            code="lbl.plot.no"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:input class="form-control patternvalidation" maxlength="50"
	                                    id="plotNumber" path="plotNumber"/>
	                        <form:errors path="plotNumber" cssClass="add-margin error-msg"/>
	                    </div>
	                    <label class="col-sm-2 control-label text-right"><spring:message
	                            code="lbl.applicant.name"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:input class="form-control patternvalidation" maxlength="50"
	                                    id="applicantName" path="applicantName"/>
	                        <form:errors path="applicantName" cssClass="add-margin error-msg"/>
	                    </div>
	                </div>
	            
	                <div class="form-group">
	                    <label class="col-sm-3 control-label text-right"><spring:message
	                            code="lbl.fromDate"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:input path="fromDate" class="form-control datepicker"
	                                    data-date-end-date="0d" id="fromDate"
	                                    data-inputmask="'mask': 'd/m/y'"/>
	                        <form:errors path="fromDate" cssClass="add-margin error-msg"/>
	                    </div>
	                    <label class="col-sm-2 control-label text-right"><spring:message
	                            code="lbl.toDate"/></label>
	                    <div class="col-sm-3 add-margin">
	                        <form:input path="toDate" class="form-control datepicker"
	                                    data-date-end-date="0d" id="toDate"
	                                    data-inputmask="'mask': 'd/m/y'"/>
	                        <form:errors path="toDate" cssClass="add-margin error-msg"/>
	                    </div>
	                </div>                 
	            </div>
	        </div>
	    </div>
	</div>
	<div class="text-center">
		<button type='button' class='btn btn-primary' id="btnSearch">
			<spring:message code='lbl.search' />
		</button>
		<button type="reset" id="reset" class="btn btn-danger">
			<spring:message code="lbl.reset" />
		</button>
		<a href='javascript:void(0)' class='btn btn-default' onclick='self.close()'><spring:message code='lbl.close' /></a>
	</div>
</form:form>
<br>

<div id="chartContainer" style="height: 360px; width: 100%;"></div>

<div class="row display-hide report-section" id="table_container">
	<div class="col-md-12 form-group report-table-container">
		<table class="table table-bordered table-hover multiheadertbl"
			id="searchStatusByServiceTypeReportTable">
			<thead>
				<tr>
					<th><spring:message code="lbl.slno"/></th>
					<th><spring:message code="lbl.status"/></th>
					<th><spring:message code="lbl.newconstruction"/></th>
					<%-- <th><spring:message code="lbl.demolition"/></th> --%>
					<th><spring:message code="lbl.reconstruction"/></th>
					<th><spring:message code="lbl.alteration"/></th>
				<%-- 	<th><spring:message code="lbl.division.development.land"/></th> --%>
					<th><spring:message code="lbl.addextension"/></th>
					<th><spring:message code="lbl.change.occupancy"/></th>
					<%-- <th><spring:message code="lbl.amenities"/></th>
					<th><spring:message code="lbl.huts.sheds"/></th>
					<th><spring:message code="lbl.tower.construction"/></th> --%>
					<th><spring:message code="lbl.total"/></th>
				</tr>
			</thead>
			<tfoot id="report-footer">
				<tr>
						<td></td>
						<td><spring:message code="lbl.total"/></td>
						<td></td>
						<!-- <td></td> -->
						<td></td>
						<td></td>
						<!-- <td></td> -->
						<td></td>
						<td></td>
						<!-- <td></td>
						<td></td>
						<td></td> -->
						<td></td>
					</tr>
				</tfoot>
		</table>
	</div>
	<input type="hidden" id="atleastOneInputReq" value="<spring:message code='msg.validate.atleast.oneinput.required'/>"/>
</div>
<link rel="stylesheet"
	  href="<cdn:url value='/resources/global/css/jq/plugins/datatables/jq.dataTables.min.css' context='/egi'/>"/>
<link rel="stylesheet"
	  href="<cdn:url value='/resources/global/css/jq/plugins/datatables/dataTables.bts.min.css' context='/egi'/>">
<script type="text/javascript"
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/jq.dataTables.min.js' context='/egi'/>"></script>
<script type="text/javascript"
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/dataTables.bts.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/dataTables.buttons.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/buttons.bts.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/buttons.flash.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/jszip.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/pdfmake.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/vfs_fonts.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/buttons.html5.min.js' context='/egi'/>"></script>
<script
		src="<cdn:url value='/resources/global/js/jq/plugins/datatables/extensions/buttons/buttons.print.min.js' context='/egi'/>"></script>
<script type="text/javascript"
		src="<cdn:url value='/resources/global/js/jq/plugins/jq.validate.min.js' context='/egi'/>"></script>
<script src="<cdn:url value='/resources/global/js/jq/plugins/datatables/datetime-moment.js' context='/egi'/>"></script>
<script src="<cdn:url value='/resources/global/js/bts/bts-datepicker.js' context='/egi'/>"
		type="text/javascript"></script>
<script src="<c:url value='/resources/global/js/handlebars/handlebars.js?rnd=${app_release_no}' context='/egi'/>"></script>
				
<script src="<cdn:url value='/resources/js/app/servicewise-status-report-helper-chart-oc-Urban.js?rnd=${app_release_no}'/> "></script>
<script src="<cdn:url value='/resources/js/app/bpa-ajax-helper.js?rnd=${app_release_no}'/> "></script>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	
<script>


</script>