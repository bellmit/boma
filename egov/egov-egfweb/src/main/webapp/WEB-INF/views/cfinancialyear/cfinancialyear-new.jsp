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
<%@ include file="/includes/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/tags/cdn.tld" prefix="cdn" %>
<form:form role="form" action="create" modelAttribute="CFinancialYear"
	id="cFinancialYearform" cssClass="form-horizontal form-groups-bordered"
	enctype="multipart/form-data">
	<c:if test="${not empty message}">
		<div class="alert alert-success" role="alert">
			<strong>${message}</strong>
		</div>
	</c:if>
	<%@ include file="cfinancialyear-form.jsp"%>
	</div>
	</div>
	</div>
	</div>

	<div class="form-group">
		<div class="text-center">
			<button type='submit' class='btn btn-primary' id="buttonSubmit">
				<spring:message code='lbl.create' />
			</button>
			<a href='javascript:void(0)' class='btn btn-default'
				onclick='self.close()'><spring:message code='lbl.close' /></a>
		</div>
	</div>
</form:form>
<script>
	$('#buttonSubmit').click(function(e) {
	
			if (validateFields() && $('form').valid()) {
			}
		 else {
			e.preventDefault();
		}
	});

	function checkforNonEmptyPrevRow() {
		var tbl = document.getElementById("fiscalPeriodTable");
		var lastRow = (tbl.rows.length) - 1;
		var prevRow = (tbl.rows.length) - 2;
		var name = getControlInBranch(tbl.rows[lastRow], 'name').value;
		var startingDate = getControlInBranch(tbl.rows[lastRow], 'startDate').value;
		var endingDate = getControlInBranch(tbl.rows[lastRow], 'endDate').value;
		var finYearEndDate = document.getElementById("endingDate").value;
		if (name == '' || startingDate == '' || endingDate == '') {
			bootbox.alert("Enter all values for existing rows before adding.");
			return false;
		}
		var currDate = new Date();
		var currentDate = currDate.getDate() + "/" + (currDate.getMonth() + 1)
				+ "/" + currDate.getFullYear();
		if (prevRow > 0) {
			var prevEndDate = getControlInBranch(tbl.rows[prevRow], 'endDate').value;
			if (compareDate(formatDate6(prevEndDate), formatDate6(startingDate)) == -1) {
				bootbox.alert('Enter valid Start date');
				getControlInBranch(tbl.rows[lastRow], 'startDate').value = '';
				getControlInBranch(tbl.rows[lastRow], 'startDate').focus();
				return false;
			}
		}
		/*To check whether fiscal End date and financial end date are equal*/
		if (endingDate != finYearEndDate) {
			if (compareDate(formatDate6(endingDate),
					formatDate6(finYearEndDate)) == -1) {
				bootbox.alert('Enter valid End date');
				getControlInBranch(tbl.rows[lastRow], 'endDate').value = '';
				getControlInBranch(tbl.rows[lastRow], 'endDate').focus();
				return false;
			}
		}
		return true;
	}
	
	function replaceSpecialChar(e) {
	    var k;
	    document.all ? k = e.keyCode : k = e.which;
	    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
	}
	function isSpecialChar(Obj){
		var groupName = document.getElementById('finYearRange').value;
		var startDate = document.getElementById('startingDate')value;
		var endingDate = document.getElementById('endingDate')value;
	    var pattern=/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
	    if(document.getElementById('finYearRange').value.match(pattern)){
            var replacedNumber = groupName.replace(/[`~!@#$%^&*()_|+\=ï¿½ï¿½?;:><'",.<>\{\}\[\]\\\/]/gi, '');
            document.getElementById('finYearRange').value = replacedNumber;
            return false;
        }
	    if(document.getElementById('startingDate').value.match(pattern)){
            var replacedNumber = startDate.replace(/[`~!@#$%^&*()_|+\=ï¿½ï¿½?;:><'",.<>\{\}\[\]\\\/]/gi, '');
            document.getElementById('startingDate').value = replacedNumber;
            return false;
        }
	    if(document.getElementById('endingDate').value.match(pattern)){
            var replacedNumber = endingDate.replace(/[`~!@#$%^&*()_|+\=ï¿½ï¿½?;:><'",.<>\{\}\[\]\\\/]/gi, '');
            document.getElementById('endingDate').value = replacedNumber;
            return false;
        }
	}
</script>
<script type="text/javascript"
	src="<cdn:url value='/resources/app/js/cFinancialYearHelper.js?rnd=${app_release_no}'/>"></script>