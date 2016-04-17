/*#-------------------------------------------------------------------------------
# eGov suite of products aim to improve the internal efficiency,transparency, 
#    accountability and the service delivery of the government  organizations.
# 
#     Copyright (C) <2015>  eGovernments Foundation
# 
#     The updated version of eGov suite of products as by eGovernments Foundation 
#     is available at http://www.egovernments.org
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program. If not, see http://www.gnu.org/licenses/ or 
#     http://www.gnu.org/licenses/gpl.html .
# 
#     In addition to the terms of the GPL license to be adhered to in using this
#     program, the following additional terms are to be complied with:
# 
# 	1) All versions of this program, verbatim or modified must carry this 
# 	   Legal Notice.
# 
# 	2) Any misrepresentation of the origin of the material is prohibited. It 
# 	   is required that all modified versions of this material be marked in 
# 	   reasonable ways as different from the original version.
# 
# 	3) This license does not grant any rights to any user of the program 
# 	   with regards to rights under trademark law for use of the trade names 
# 	   or trademarks of eGovernments Foundation.
# 
#   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
#-------------------------------------------------------------------------------*/
$detailsRowCount = $('#detailsSize').val();
$(document).ready(function(){
	
	/*function creditGlcode_initialize() {
		 var custom = new Bloodhound({
		    datumTokenizer: function(d) { return d.tokens; },
		    queryTokenizer: Bloodhound.tokenizers.whitespace,
		    remote: '/egworks/letterofacceptance/ajaxcontractors-loa?name=%QUERY'
		    });*/
	
		/* var creditGlcode = new Bloodhound({   
		        datumTokenizer: function (datum) {
		            return Bloodhound.tokenizers.whitespace(datum.value);
		        },
		        queryTokenizer: Bloodhound.tokenizers.whitespace,
		        remote: {
		            url: '/egworks/letterofacceptance/ajaxcontractors-loa?name=%QUERY',
		            filter: function (data) {
		                return $.map(data, function (ct) {
		                    return {
		                    	//glcode: ct.glcode,
		                        id: ct.id,
		                        name: ct.name,
		                        code: ct.code
		                    };
		                });
		            }
		        }
		    });
		 
		 	$('#creditGlcode').typeahead('destroy');
			
		    //custom.initialize();
		    creditGlcode.initialize(); 
		    var creditGlcode_typeahead = $('#creditGlcode').typeahead({ 
				hint : true,
				highlight : true,
				minLength : 3
				
			}, {
				displayKey : 'code',
				source : creditGlcode.ttAdapter()
			}).on('typeahead:selected', function(event, data){ 
				$("#creditAccountHead").val(data.name);  
				$("#glcodeid").val(data.id);    
				//$("#contractor").val(data.value);   
		    });		
*/
		  /*  $('.typeahead_option_items').typeahead(null, {
		          displayKey: 'name',
		          source: custom.ttAdapter(),
		          hint: (App.isRTL() ? false : true),
		    }).on('typeahead:selected', function (obj, value) {
		        console.log(value.name);
		    });*/
	function creditGlcode_initialize() {
		 var custom = new Bloodhound({
		    datumTokenizer: function(d) { return d.tokens; },
		    queryTokenizer: Bloodhound.tokenizers.whitespace,
		  //remote: '/egworks/letterofacceptance/ajaxcontractors-loa?name=%QUERY'
			   remote: {
		            url: '/egworks/contractorbill/ajaxdeduction-coa?glCode=%QUERY',
		            filter: function (data) {
		                return $.map(data, function (ct) {
		                    return {
		                        id: ct.id,
		                        name: ct.name,
		                        glcode: ct.glcode
		                    };
		                });
		            }
		        }
		    });

		    custom.initialize();

		    $('.creditGlcode').typeahead({
		    	hint : true,
				highlight : true,
				minLength : 3
				
			}, {		    
		          displayKey: 'glcode',
		          source: custom.ttAdapter()
		    }).on('typeahead:selected', function (event, data) {
		    	$(".creditAccountHead").val(data.name); 
				$(".creditglcodeid").val(data.id);    
		    });
		}
	$('.creditGlcode').typeahead('destroy');
	creditGlcode_initialize();
		
	
	replaceBillTypeChar();
	
	var currentState = $('#currentState').val();
	if(currentState == 'Created') {
		$('#approverDetailHeading').hide();
		
		$('#approvalDepartment').removeAttr('required');
		$('#approvalDesignation').removeAttr('required');
		$('#approvalPosition').removeAttr('required');
	}
		
	function replaceBillTypeChar() { 
		$('#billtype option').each(function() {
		   var $this = $(this);
		   if($this.val() != '') {
			   var billType = $this.text().replace(/_/g, ' ');
			   $this.text(billType);
			   $this.val(billType);
		   }
		});
	}
				
	$('.btn-primary').click(function(){
		var button = $(this).attr('id');
		if (button != null && button == 'Forward') {
			var debitamount = $('#debitamount').val();
			$('#billamount').val(debitamount);
			if($('#partyBillDate').val() != '') { 
				var workOrderDate = $('#workOrderDate').data('datepicker').date;
				var partyBillDate = $('#partyBillDate').data('datepicker').date;
				if(workOrderDate > partyBillDate) {
					bootbox.alert($('#errorPartyBillDate').val());
					$('#partyBillDate').val("");
					return false;
				}
				else {
					document.forms[0].submit();	
				}
			}	
			if(!validateNetPayableAmount())
				return false;
			return validateWorkFlowApprover(button);
		}
		return validateWorkFlowApprover(button);
	});
	
	$("#netPayableAccountCode").each(function() {
		if($(this).children('option').length == 2) {
		 	$(this).find('option').eq(1).prop('selected', true);
		}
	});

	function validateWorkFlowApprover(name) {
		document.getElementById("workFlowAction").value = name;
		var approverPosId = document.getElementById("approvalPosition");
		var button = document.getElementById("workFlowAction").value;
		if (button != null && button == 'Submit') {
			$('#approvalDepartment').attr('required', 'required');
			$('#approvalDesignation').attr('required', 'required');
			$('#approvalPosition').attr('required', 'required');
			$('#approvalComent').removeAttr('required');
		}
		if (button != null && button == 'Reject') {
			$('#approvalDepartment').removeAttr('required');
			$('#approvalDesignation').removeAttr('required');
			$('#approvalPosition').removeAttr('required');
			$('#approvalComent').attr('required', 'required');
		}
		if (button != null && button == 'Cancel') {
			$('#approvalDepartment').removeAttr('required');
			$('#approvalDesignation').removeAttr('required');
			$('#approvalPosition').removeAttr('required');
			$('#approvalComent').attr('required', 'required');
		}
		if (button != null && button == 'Forward') {
			$('#approvalDepartment').attr('required', 'required');
			$('#approvalDesignation').attr('required', 'required');
			$('#approvalPosition').attr('required', 'required');
			$('#approvalComent').removeAttr('required');
		}
		if (button != null && button == 'Approve') {
			$('#approvalComent').removeAttr('required');
		}

		document.forms[0].submit;
		return true;
	}
	
});

function addDeductionRow() { 
	var rowcount = $("#tblcreditdetails tbody tr").length;
	if (rowcount < 30) {
		if (document.getElementById('deductionRow') != null) {
			// get Next Row Index to Generate
			var nextIdx = 0;
			if($detailsRowCount == 0)
				nextIdx = $("#tblcreditdetails tbody tr").length;
			else
				nextIdx = $detailsRowCount++;
			nextIdx++;
			// validate status variable for exiting function
			var isValid = 1;// for default have success value 0

			// validate existing rows in table
			$("#tblcreditdetails tbody tr").find('input').each(
					function() {
						if (($(this).data('optional') === 0)
								&& (!$(this).val()) && !($(this).attr('name')===undefined)) { 
							$(this).focus();
							bootbox.alert($(this).data('errormsg'));
							isValid = 0;// set validation failure
							return false;
						}
			});
			if (isValid === 0) {
				return false;
			}
			
			// Generate all textboxes Id and name with new index
			$("#deductionRow").clone().find("input, errors").each(
			function() {	
				if ($(this).data('server')) {
					$(this).removeAttr('data-server');
				}
				
				$(this).attr(
						{
							'name' : function(_, name) {
								//return name.replace(/\[.\]/g, '['+ nextIdx +']');
								if(!($(this).attr('name')===undefined))
									return name.replace(/\d+/, nextIdx); 
							},
							'data-idx' : function(_,dataIdx)
							{
								return nextIdx;
							}
						});
	
					// if element is static attribute hold values for
					// next row, otherwise it will be reset
					if (!$(this).data('static')) {
						$(this).val('');
					}
					
					//$(this).attr('readonly', false);
					//$(this).removeAttr('disabled');
					//$(this).prop('checked', false);
	
			}).end().appendTo("#tblcreditdetails tbody");		
			
		}
	} else {
		  bootbox.alert('limit reached!');
	}
}


function getRow(obj) {
	if(!obj)return null;
	tag = obj.nodeName.toUpperCase();
	while(tag != 'BODY'){
		if (tag == 'TR') return obj;
		obj=obj.parentNode ;
		tag = obj.nodeName.toUpperCase();
	}
	return null;
}

function deleteDeductionRow(obj) {
    var rIndex = getRow(obj).rowIndex;
    
    var id = $(getRow(obj)).children('td:first').children('input:first').val();
    //To get all the deleted rows id
    var aIndex = rIndex - 1;
	var tbl=document.getElementById('tblcreditdetails');	
	var rowcount=$("#tblcreditdetails tbody tr").length;
    if(rowcount<=1) {
		bootbox.alert("This row can not be deleted");
		return false;
	} else {
		tbl.deleteRow(rIndex);
		//starting index for table fields
		var idx=parseInt($detailsRowCount);
		//regenerate index existing inputs in table row
		$("#tblcreditdetails tbody tr").each(function() {
		
			hiddenElem=$(this).find("input:hidden");
			
			if(!$(hiddenElem).val())
			{
				$(this).find("input, errors, textarea").each(function() {
					   $(this).attr({
					      'name': function(_, name) {
					    	  return name.replace(/\[.\]/g, '['+ idx +']'); 
					      },
						  'data-idx' : function(_,dataIdx)
						  {
							  return idx;
						  }
					   });
			    });
				idx++;
			}
		});
		calculateNetPayableAmount();
		return true;
	}	
}

function calculateNetPayableAmount(){
	validateAmount();
	var debitAmount = $('#debitamount').val();
	var totalDeductionAmount = 0;
	$( "input[name$='creditamount']" ).each(function(){
		totalDeductionAmount = totalDeductionAmount + parseFloat(($(this).val()?$(this).val():"0"));
	});
	$('#netPayableAmount').val(roundTo(debitAmount-totalDeductionAmount));
	validateNetPayableAmount();
}	

function validateNetPayableAmount() {
	if($('#netPayableAmount').val() < 0) {
		bootbox.alert("Net Payable amount cannot be less than zero!");
		return false;
	}
	return true;
}

function validateAmount() {
	$( "input[name$='debitamount']" ).on("keyup", function(){
	    var valid = /^[1-9](\d{0,9})(\.\d{0,2})?$/.test(this.value),
	        val = this.value;
	    
	    if(!valid){
	        console.log("Invalid input!");
	        this.value = val.substring(0, val.length - 1);
	    }
	});
	$( "input[name$='creditamount']" ).on("keyup", function(){
	    var valid = /^[1-9](\d{0,9})(\.\d{0,2})?$/.test(this.value),
	        val = this.value;
	    
	    if(!valid){
	        console.log("Invalid input!");
	        this.value = val.substring(0, val.length - 1);
	    }
	});
}

function roundTo(value, decimals, decimal_padding) {
	if (!decimals)
		decimals = 2;
	if (!decimal_padding)
		decimal_padding = '0';
	if (isNaN(value))
		value = 0;
	value = Math.round(value * Math.pow(10, decimals));
	var stringValue = (value / Math.pow(10, decimals)).toString();
	var padding = 0;
	var parts = stringValue.split(".");
	if (parts.length == 1) {
		padding = decimals;
		stringValue += ".";
	} else
		padding = decimals - parts[1].length;
	for (var i = 0; i < padding; i++) {
		stringValue += decimal_padding;
	}
	return stringValue;
}


