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
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="cdn" uri="/WEB-INF/taglib/cdn.tld" %>

<div class="row" id="page-content">
    <div class="col-md-12">
        <form:form id="loginAuditSearchForm" modelAttribute="loginAuditReportRequest" method="post" class="form-horizontal form-groups-bordered">
            <div class="panel panel-primary" data-collapsed="0">
                <div class="panel-heading">
                    <div class="panel-title">
                        <strong><spring:message code="title.login.audit.search"/></strong>
                    </div>
                </div>
                <div class="panel-body custom-form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            <spring:message code="lbl.usertype"/>
                        </label>
                        <div class="col-sm-3 add-margin">
                            <form:select path="userType" id="userType" class="form-control">
                                <form:option value=""><spring:message code="lbl.select"/></form:option>
                                <form:options items="${userTypes}"/>
                            </form:select>
                        </div>
                        <label class="col-sm-2 control-label">
                            <spring:message code="lbl.username"/>
                        </label>
                        <div class="col-sm-3 add-margin">
                            <input name="userName" id="userName" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="panel-body custom-form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            <spring:message code="lbl.login.date.from"/>
                        </label>
                        <div class="col-sm-3 add-margin">
                            <input name="loginFrom" id="loginFrom" class="form-control low-width datepicker" data-inputmask="'mask': 'd/m/y'" placeholder="" autocomplete="off">
                        </div>
                        <label class="col-sm-2 control-label">
                            <spring:message code="lbl.login.date.to"/>
                        </label>
                        <div class="col-sm-3 add-margin">
                            <input name="loginTo" id="loginTo" class="form-control low-width datepicker" data-inputmask="'mask': 'd/m/y'" placeholder="" autocomplete="off">
                        </div>
                    </div>
                </div>
                <div class="panel-body custom-form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            <spring:message code="lbl.ipaddress"/>
                        </label>
                        <div class="col-sm-3 add-margin">
                            <input name="ipAddress" id="ipAddress" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="text-center">
                    <button type="button" id="search-btn" class="btn btn-primary"><spring:message code="lbl.search"/></button>
                    <button type="reset" class="btn btn-default"><spring:message code="lbl.reset"/></button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="window.close();">
                        <spring:message code="lbl.close"/>
                    </button>
                </div>
            </div>
            <table class="table table-bordered" id="view-login-audit-tbl"></table>
        </form:form>
    </div>
</div>
<link rel="stylesheet" href="<cdn:url value='/resources/global/css/jq/plugins/datatables/jq.dataTables.min.css' context='/egi'/>"/>
<link rel="stylesheet" href="<cdn:url value='/resources/global/css/jq/plugins/datatables/dataTables.bts.min.css' context='/egi'/>">
<script src="<cdn:url  value='/resources/global/js/jq/plugins/datatables/jq.dataTables.min.js'/>"></script>
<script src="<cdn:url  value='/resources/global/js/jq/plugins/datatables/responsive/js/datatables.responsive.js'/>"></script>
<script src="<cdn:url  value='/resources/global/js/jq/plugins/datatables/dataTables.bts.js'/>"></script>
<script src="<cdn:url  value='/resources/js/app/login-audit-report.js?rnd=${app_release_no}'/>"></script>
