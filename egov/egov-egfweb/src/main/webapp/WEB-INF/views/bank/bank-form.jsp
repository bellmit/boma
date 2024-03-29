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


	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-primary" data-collapsed="0">
			<form:errors style="color:red;"></form:errors>
				<div class="panel-heading">
					<div class="panel-title"><spring:message code="lbl.create.bank" /></div>
					<input type="hidden" name="bank" value="${bank.id}" />
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-sm-3 control-label text-right"><spring:message code="lbl.name" /> <span class="mandatory"></span> </label>
						<div class="col-sm-3 add-margin">
							<form:input path="name" class="form-control text-left patternvalidation" id="bankName"
							onkeypress="return replaceSpecialChar(event)" onchange="isSpecialChar(this);" onblur="isSpecialChar(this);"
							data-pattern="alphanumeric" maxlength="50" required="required" />
							<form:errors path="name" cssClass="error-msg" />
						</div>
						<label class="col-sm-2 control-label text-right"><spring:message code="lbl.code" /> <span class="mandatory"></span> </label>
						<div class="col-sm-3 add-margin">
							<form:input path="code" class="form-control text-left patternvalidation" id="bankCode"
							onkeypress="return replaceSpecialChar(event)" onchange="isSpecialChar(this);" onblur="isSpecialChar(this);"
							data-pattern="alphanumeric" maxlength="50" required="required" />
							<form:errors path="code" cssClass="error-msg" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label text-right"><spring:message code="lbl.isactive" /> </label>
						<div class="col-sm-3 add-margin">
							<form:checkbox path="isactive" />
							<form:errors path="isactive" cssClass="error-msg" />
						</div>
						<label class="col-sm-2 control-label text-right"><spring:message code="lbl.narration" /> </label>
						<div class="col-sm-3 add-margin">
							<form:textarea path="narration" id="narration" class="form-control" maxlength="250" ></form:textarea>
							<form:errors path="narration" cssClass="error-msg" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" >
		function replaceSpecialChar(e) {
		    var k;
		    document.all ? k = e.keyCode : k = e.which;
		    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
		}
		function isSpecialChar(Obj){
			var bankCode = document.getElementById('bankCode').value;
			var bankName = document.getElementById('bankName').value;
		    var pattern=/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
		    if(document.getElementById('bankCode').value.match(pattern)){
	            var replacedCode = bankCode.replace(/[`~!@#$%^&*()_|+\-=��?;:><'",.<>\{\}\[\]\\\/]/gi, '');
	            document.getElementById('bankCode').value = replacedCode;
	            return false;
	        }
		    if(document.getElementById('bankName').value.match(pattern)){
	            var replacedName = bankName.replace(/[`~!@#$%^&*()_|+\-=��?;:><'",.<>\{\}\[\]\\\/]/gi, '');
	            document.getElementById('bankName').value = replacedName;
	            return false;
	        }
		}
	</script>