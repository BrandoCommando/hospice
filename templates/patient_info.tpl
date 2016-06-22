<form method="post" id="frmPatient">
{if $patient.id ne ""}
<input type="hidden" name="action" value="update" />
<input type="hidden" name="patient_id" value="{$patient.id}" />
{else}
<input type="hidden" name="action" value="add" />
{/if}
<div class="panel panel-primary">
<div class="panel-heading">Demographics</div>
<div class="panel-body" id="demo_body">
	<div class="row">
		<div class="col-md-2 form-group">
			<label for="patient_mr">MR #</label>
			<input type="text" name="patient[mr_num]" id="patient_mr" class="form-control" value="{$patient.mr_num}" />
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>CTI
				<input type="checkbox" class="checkbox form-control" name="patient[cti]" id="patient_cti" value="1"{if $patient.cti eq "1"} checked="checked"{/if} />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>NOE
				<input type="checkbox" class="checkbox form-control" name="patient[noe]" id="patient_noe" value="1"{if $patient.noe eq "1"} checked="checked"{/if} />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>81A
				<input type="checkbox" class="checkbox form-control" name="patient[81a]" id="patient_81a" value="1"{if $patient.81a eq "1"} checked="checked"{/if} />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>81B
				<input type="checkbox" class="checkbox form-control" name="patient[81b]" id="patient_81b" value="1"{if $patient.81b eq "1"} checked="checked"{/if} />
			</label>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-xs-4 form-group">
			<label for="patient_admit_type">Admit Type</label>
			<select name="patient[admit_type]" id="patient_admit_type" class="form-control">
			<option></option>
			{foreach from=$lists.admit_type item=val key=i}
			<option{if $patient.admit_type eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-2 col-xs-4 form-group">
			<label for="patient_soc">SOC</label>
			<input type="text" name="patient[soc]" id="patient_soc" class="form-control datepicker" value="{$patient.soc}" placeholder="SOC" />
		</div>
		<div class="col-md-3 col-xs-4 form-group">
			<label for="patient_status">Status</label>
			<select id="patient_status" name="patient[status]" class="form-control">
			{foreach from=$lists.status item=val key=i}
			<option{if $patient.status eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="patient_discharge_date">Discharge Date</label>
			<input type="text" name="patient[discharge_date]" class="form-control datepicker" value="{$patient.discharged|date_format:'%D'}" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="patient_discharge_time">Discharge Time</label>
			<input type="text" name="patient[discharge_time]" class="form-control" value="{$patient.discharged|date_format:'%T'}" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-5 col-xs-5 form-group">
			<label for="patient_first_name">First Name</label>
			<input type="text" id="patient_first_name" name="patient[first_name]" class="form-control" value="{$patient.first_name}" />
		</div>
		<div class="col-md-1 col-xs-2 form-group">
			<label for="patient_initial">M.I.</label>
			<input type="text" id="patient_middle_initial" name="patient[middle_initial]" class="form-control" value="{$patient.middle_initial}" />
		</div>
		<div class="col-md-6 col-xs-5 form-group">
			<label for="patient_last_name">Last Name</label>
			<input type="text" id="patient_last_name" name="patient[last_name]" class="form-control" value="{$patient.last_name}" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 col-xs-3 form-group">
			<label for="patient_sex">Sex</label>
			<select name="patient[sex]" id="patient_sex" class="form-control">
				<option></option>
				{foreach from=$lists.sex item=val key=i}
				<option{if $patient.sex eq $val} selected{/if}>{$val}</option>
				{/foreach}
			</select>
		</div>
		<div class="col-md-4 col-xs-5 form-group">
			<label for="patient_birthdate">Date of Birth</label>
			<input type="date" id="patient_birthdate" name="patient[birthdate]" class="form-control" value="{$patient.birthdate}" />
		</div>
		<div class="col-md-1 col-xs-4 form-group">
			<label>Age</label>
			<input id="patient_age" class="form-control disabled"{if $patient.birthdate|default:'' ne ""} value="{math equation='floor((n-b)/31536000)' n=$smarty.now b=$patient.birthdate|strtotime}"{/if} />
		</div>
		<div class="col-md-5 col-xs-6 form-group">
			<label for="patient_ssn">SSN</label>
			<input type="text" name="patient[ssn]" id="patient_ssn" class="form-control" value="{$patient.ssn}" />
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_race">Race</label>
			<select name="patient[race]" id="patient_race" class="form-control">
			<option></option>
			{foreach from=$lists.race item=val key=i}
			<option{if $patient.race eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="patient_religion">Religion</label>
			<input type="text" name="patient[religion]" id="patient_religion" class="form-control" value="{$patient.religion}" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="patient_language">Language</label>
			<input type="text" name="patient[language]" id="patient_language" class="form-control" value="{$patient.language}" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="patient_marital">Marital Status</label>
			<select name="patient[marital]" id="patient_marital" class="form-control">
			<option></option>
			{foreach from=$lists.marital item=val key=i}
			<option{if $patient.marital eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_ethnicity">Ethnicity</label>
			<select name="patient[ethnicity]" id="patient_ethnicity" class="form-control">
			<option></option>
			{foreach from=$lists.ethnicity item=val key=i}
			<option{if $patient.ethnicity eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_phone">Phone</label>
			<input type="phone" name="patient[phone]" id="patient_phone" class="form-control" value="{$patient.phone}" />
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_fax">Fax</label>
			<input type="phone" name="patient[fax]" id="patient_fax" class="form-control" value="{$patient.fax}" />
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_cell">Cell</label>
			<input type="phone" name="patient[cell]" id="patient_cell" class="form-control" value="{$patient.cell}" />
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="patient_other_number">Other #</label>
			<input type="phone" name="patient[other_number]" id="patient_other_number" class="form-control" value="{$patient.other_number}" />
		</div>
		<div class="col-md-7 col-xs-12 form-group">
			<label for="patient_address">Address</label>
			<input type="text" name="patient[address]" id="patient_address" class="form-control" value="{$patient.address}" />
		</div>
		<div class="col-md-3 col-xs-4 form-group">
			<label for="patient_gate">Gate Code</label>
			<input type="text" name="patient[gate_code]" id="patient_gate_code" class="form-control" value="{$patient.gate_code}" />
		</div>
		<div class="col-md-2 col-xs-4 form-group">
			<label for="patient_mileage">Mileage</label>
			<input type="text" name="patient[mileage]" id="patient_mileage" class="form-control" value="{$patient.mileage}" />
		</div>
		<div class="col-md-6 col-xs-5 form-group">
			<label for="patient_city">City</label>
			<input type="text" name="patient[city]" id="patient_city" class="form-control" value="{$patient.city}" />
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label for="patient_state">State</label>
			<input type="text" name="patient[state]" id="patient_state" class="form-control" maxlength="2" value="{$patient.state}" />
		</div>
		<div class="col-md-2 col-xs-4 form-group">
			<label for="patient_zip">Zip</label>
			<input type="text" name="patient[zip]" id="patient_zip" class="form-control" value="{$patient.zip}" />
		</div>
		<div class="col-md-2 col-xs-5 form-group">
			<label for="patient_county">County</label>
			<input type="text" name="patient[county]" id="patient_county" class="form-control" value="{$patient.county}" />
		</div>
	</div>
</div>
</div>

<div class="panel panel-default">
<div class="panel-heading">Location</div>
<div class="panel-body" id="location_body">
	<div class="row">
		<div class="col-md-3 col-xs-12 form-group">
			<label for="location_location">Location</label>
			<select name="location[location]" id="location_location" class="form-control">
			<option></option>
			{foreach from=$lists.location item=val key=i}
			<option{if $location.location eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="location_start_date">Start Date</label>
			<input type="text" class="form-control" name="location[start_date]" id="location_start_date" placeholder="Start Date" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="location_end_date">End Date</label>
			<input type="text" class="form-control" name="location[end_date]" id="location_end_date" placeholder="End Date" />
		</div>
		<div class="col-md-5 col-xs-12 form-group">
			<label for="location_facility">Facility</label>
			<input type="text" class="form-control" name="location[facility]" id="location_facility" placeholder="Facility" />
		</div>
		<div class="col-md-3 col-xs-12 form-group">
			<label for="location_npi">NPI</label>
			<input type="text" class="form-control" name="location[npi]" id="location_npi" placeholder="NPI" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="location_phone">Phone</label>
			<input type="phone" class="form-control" name="location[phone]" id="location_phone" placeholder="Phone" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="location_fax">Fax</label>
			<input type="phone" class="form-control" name="location[fax]" id="location_fax" placeholder="Fax #" />
		</div>
		<div class="col-md-7 col-xs-12 form-group">
			<label for="location_notes">Notes</label>
			<textarea class="form-control" name="location[notes]" id="location_notes"></textarea>
		</div>
	</div>
	
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Diagnosis</div>
<div class="panel-body" id="diagnosis_body">
	<div class="row">
		<div class="col-md-9 col-xs-8 form-group">
			<label for="diag10diag">ICD10 Hospice Diagnosis</label>
			<input type="text" name="diagnosis[{$diagnosis.id}][diagnosis]" id="diag10diag" class="form-control"{if $diagnosis.ICD10_PRIMARY} value="{$diagnosis.ICD10_PRIMARY.diagnosis}"{/if} />
		</div>
		<div class="col-md-3 col-xs-4 form-group">
			<label for="diag10date">Date</label>
			<input type="text" name="diagnosis[{$diagnosis.id}][date]" id="diag10date" class="form-control"{if $diagnosis.ICD10_PRIMARY} value="{$diagnosis.ICD10_PRIMARY.date}"{/if} />
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 col-xs-8 form-group">
			<label for="diag10diag">ICD9 Hospice Diagnosis</label>
			<input type="text" name="diagnosis[{$diagnosis.id}][diagnosis]" id="diag9diag" class="form-control"{if $diagnosis.ICD9_PRIMARY} value="{$diagnosis.ICD9_PRIMARY.diagnosis}"{/if} />
		</div>
		<div class="col-md-3 col-xs-4 form-group">
			<label for="diag9date">Date</label>
			<input type="text" name="diagnosis[{$diagnosis.id}][date]" id="diag9date" class="form-control"{if $diagnosis.ICD9_PRIMARY} value="{$diagnosis.ICD9_PRIMARY.date}"{/if} />
		</div>
	</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Physician</div>
<div class="panel-body" id="physician_body">
	<div class="row">
		<div class="col-md-2 col-xs-6 form-group">
			<label for="physician0_role">Role</label>
			<select name="physician[0][role]" id="physician0_role" class="form-control">
				<option></option>
				{foreach from=$lists.physician_role item=val key=i}
				<option{if $physician.role eq $val} selected{/if}>{$val}</option>
				{/foreach}
			</select>
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="physician0_name">Name</label>
			<input type="text" name="physician[0][name]" class="form-control" id="physician0_name" value="{$physician.name}" />
		</div>
		<div class="col-md-3 col-xs-5 form-group">
			<label for="physician0_phone">Phone</label>
			<input type="text" class="form-control disabled" id="physician0_phone" value="{$physician.phone}" />
		</div>
		<div class="col-md-3 col-xs-5 form-group">
			<label for="physician0_npi">NPI</label>
			<input type="text" class="form-control disabled" id="physician0_npi" value="{$physician.npi}" />
		</div>
		<div class="col-md-1 col-xs-2 form-group">
			<label>Notify
				<input type="checkbox" class="form-control" id="physician0_notify" name="physician[notify]" value="1" {if $physician.notify eq '1'} checked="checked"{/if} />
			</label>
		</div>
	</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Insurance</div>
<div class="panel-body" id="insurance_body">
	<div class="row">
	<div class="col-md-3 form-group">
	<label for="insurance0_company">Company</label>
	<select id="insurance0_company" name="insurance[company]" class="form-control">
			<option></option>
			{foreach from=$lists.insurance_company item=val key=i}
			<option{if $insurance.company eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
	</div>
	<div class="col-md-4 form-group">
		<label for="insurance0_number">Number</label>
		<input type="text" id="insurance0_number" name="insurance[number]" class="form-control" value="{$insurance.number}" />
	</div>
	<div class="col-md-2 form-group">
		<label for="insurance0_role">Role</label>
		<select class="form-control" name="insurance[role]" id="insurance0_role">
			<option></option>
			{foreach from=$lists.insurance_role item=val key=i}
			<option{if $insurance.role eq $val} selected{/if}>{$val}</option>
			{/foreach}
		</select>
	</div>
	<div class="col-md-3 form-group">
		<label for="insurance0_note">Note</label>
		<input type="text" name="insurance[note]" id="insurance0_note" class="form-control" value="{$insurance.note}" />
	</div>
	</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Certifications</div>
<div class="panel-body" id="cert_body">
	<div class="row">
		<div class="col-md-2 col-xs-6 form-group">
			<label for="cert0_number">Cert #</label>
			<select name="certification[number]" id="cert0_number" class="form-control">
			<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
			</select>
		</div>
		<div class="col-md-3 col-xs-6 form-group">
			<label for="cert0_type">Type</label>
			<select name="certification[type]" id="cert0_type" class="form-control">
			<option></option>
			{foreach from=$lists.certification_type item=val key=i}
			<option{if $certification.type eq $val} selected{/if}>{$val}</option>
			{/foreach}
			</select>
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="cert0_start">Start</label>
			<input type="text" class="form-control date" name="certification[start_date]" id="cert0_start" value="{$certification.start_date}" />
		</div>
		<div class="col-md-2 col-xs-6 form-group">
			<label for="cert0_end">End</label>
			<input type="text" class="form-control date" name="certification[end_date]" id="cert0_end" value="{$certification.end_date}" />
		</div>
		<div class="col-md-3 form-group">
			<label for="cert0_signed">Signed</label>
			<input type="text" class="form-control date" name="certification[signed]" id="cert0_signed" value="{$certification.signed}" />
		</div>
		<div class="col-md-4 form-group">
			<label for="cert0_physician1">Physician</label>
			<input type="text" class="form-control" name="certification[physician1]" id="cert0_physician1" value="{$certification.physician1}" />
		</div>
		<div class="col-md-4 form-group">
			<label for="cert0_physician2">Physician</label>
			<input type="text" class="form-control" name="certification[physician2]" id="cert0_physician2" value="{$certification.physician2}" />
		</div>
		<div class="col-md-2 col-xs-4 form-group">
			<label for="cert0_transfer">
				<input type="checkbox" class="form-control" name="certification[transfer]" value="1"{if $certification.transfer eq '1'} checked="checked"{/if} />
				Transfer In
			</label>
		</div>
		<div class="col-md-2 col-xs-4 form-group">
			<label for="cert0_f2f">
				<input type="checkbox" class="form-control" name="certification[f2f]" value="1"{if $certification.f2f eq '1'} checked="checked"{/if} />
				F2F
			</label>
		</div>
	</div>
</div>
</div>
  <button type="submit" class="btn btn-default">{if $patient.id ne ""}Update{else}Submit{/if}</button>
</form>