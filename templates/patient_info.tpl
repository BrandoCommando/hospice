<div class="panel panel-primary">
<div class="panel-heading">Demographics</div>
<div class="panel-body">
	<div class="row">
		<div class="col-md-2 form-group">
			<label for="patient_mr">MR #</label>
			<input type="text" name="patient[mr_num]" id="patient_mr" class="form-control" />
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>CTI
				<input type="checkbox" class="checkbox form-control" name="patient[cti]" id="patient_cti" value="1" />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>NOE
				<input type="checkbox" class="checkbox form-control" name="patient[noe]" id="patient_noe" value="1" />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>81A
				<input type="checkbox" class="checkbox form-control" name="patient[81a]" id="patient_81a" value="1" />
			</label>
		</div>
		<div class="col-md-1 col-xs-3 form-group">
			<label>81B
				<input type="checkbox" class="checkbox form-control" name="patient[81b]" id="patient_81b" value="1" />
			</label>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 form-group">
			<label for="patient_admit_type">Admit Type</label>
			<select name="patient[admit_type]" id="patient_admit_type" class="form-control">
			<option></option>
			<option>New Admit</option>
			<option>Re-Admit</option>
			<option>Transfer</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_soc">SOC</label>
			<input type="text" name="patient[soc]" id="patient_soc" class="form-control" />
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_status">Status</label>
			<select id="patient_status" name="patient[status]" class="form-control">
			<option></option>
			<option>Pending</option>
			<option>Active</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_discharge_date">Discharge Date</label>
			<input type="text" name="patient[discharge_date]" class="form-control" />
		</div>
		<div class="col-md-2">
			<label for="patient_discharge_time">Discharge Time</label>
			<input type="text" name="patient[discharge_time]" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-5">
			<label for="patient_first_name">First Name</label>
			<input type="text" id="patient_first_name" name="patient[first_name]" class="form-control" />
		</div>
		<div class="col-md-1 form-group">
			<label for="patient_initial">M.I.</label>
			<input type="text" id="patient_initial" name="patient[initial]" class="form-control" />
		</div>
		<div class="col-md-6 form-group">
			<label for="patient_last_name">Last Name</label>
			<input type="text" id="patient_last_name" name="patient[last_name]" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 form-group">
			<label for="patient_sex">Sex</label>
			<select name="patient[sex]" id="patient_sex" class="form-control">
				<option></option>
				<option>F</option>
				<option>M</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_birthdate">Date of Birth</label>
			<input type="date" id="patient_birthdate" name="patient[birthdate]" class="form-control" />
		</div>
		<div class="col-md-1 form-group">
			<strong>Age</strong>
			<input id="patient_age" class="form-control" />
		</div>
		<div class="col-md-5 form-group">
			<label for="patient_ssn">SSN</label>
			<input type="text" name="patient[ssn]" id="patient_ssn" class="form-control" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_race">Race</label>
			<select name="patient[race]" id="patient_race" class="form-control">
			<option></option>
			<option>White</option>
			<option>Black</option>
			<option>Native American</option>
			<option>Asian / Pacific Islander</option>
			<option>Other / Unknown</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_religion">Religion</label>
			<input type="text" name="patient[religion]" id="patient_religion" class="form-control" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_language">Language</label>
			<input type="text" name="patient[language]" id="patient_language" class="form-control" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_marital">Marital Status</label>
			<select name="patient[marital]" id="patient_marital" class="form-control">
			<option></option>
			<option>Single</option>
			<option>Married</option>
			<option>Divorced</option>
			<option>Widowed</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_ethnicity">Ethnicity</label>
			<select name="patient[ethnicity]" id="patient_ethnicity" class="form-control">
			<option></option>
			<option>Hispanic</option>
			<option>Non-Hispanic</option>
			<option>Unknown</option>
			</select>
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_phone">Phone</label>
			<input type="phone" name="patient[phone]" id="patient_phone" class="form-control" />
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_fax">Fax</label>
			<input type="phone" name="patient[fax]" id="patient_fax" class="form-control" />
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_cell">Cell</label>
			<input type="phone" name="patient[cell]" id="patient_cell" class="form-control" />
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_other_number">Other #</label>
			<input type="phone" name="patient[other_number]" id="patient_other_number" class="form-control" />
		</div>
		<div class="col-md-7 form-group">
			<label for="patient_address">Address</label>
			<input type="text" name="patient[address]" id="patient_address" class="form-control" />
		</div>
		<div class="col-md-3 form-group">
			<label for="patient_gate">Gate Code</label>
			<input type="text" name="patient[gate]" id="patient_gate" class="form-control" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_mileage">Mileage</label>
			<input type="text" name="patient[mileage]" id="patient_mileage" class="form-control" />
		</div>
		<div class="col-md-6 form-group">
			<label for="patient_city">City</label>
			<input type="text" name="patient[city]" id="patient_city" class="form-control" />
		</div>
		<div class="col-md-1 form-group">
			<label for="patient_state">State</label>
			<input type="text" name="patient[state]" id="patient_state" class="form-control" maxlength="2" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_zip">Zip</label>
			<input type="text" name="patient[zip]" id="patient_zip" class="form-control" />
		</div>
		<div class="col-md-2 form-group">
			<label for="patient_county">County</label>
			<input type="text" name="patient[county]" id="patient_county" class="form-control" />
		</div>
	</div>
</div>
</div>

<div class="panel panel-default">
<div class="panel-heading">Location</div>
<div class="panel-body">
	<div class="row">
		<div class="col-md-3 col-xs-12 form-group">
			<label for="location_location">Location</label>
			<select name="location[location]" id="location_location" class="form-control">
			<option>Home</option>
			</select>
		</div>
		<div class="col-md-2 col-xs-12 form-group">
			<label for="location_start_date">Start Date</label>
			<input type="text" class="form-control" name="location[start_date]" id="location_start_date" placeholder="Start Date" />
		</div>
		<div class="col-md-2 col-xs-12 form-group">
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
<div class="panel-body">
	<div class="row">
		<div class="col-md-9 col-xs-12 form-group">
			<label for="diag10diag">ICD10 Hospice Diagnosis</label>
			<input type="text" name="diagnosis[icd10][diagnosis]" id="diag10diag" class="form-control" />
		</div>
		<div class="col-md-3 col-xs-12 form-group">
			<label for="diag10date">Date</label>
			<input type="text" name="diagnosis[icd10][date]" id="diag10date" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 col-xs-12 form-group">
			<label for="diag10diag">ICD9 Hospice Diagnosis</label>
			<input type="text" name="diagnosis[icd9][diagnosis]" id="diag9diag" class="form-control" />
		</div>
		<div class="col-md-3 col-xs-12 form-group">
			<label for="diag9date">Date</label>
			<input type="text" name="diagnosis[icd9][date]" id="diag9date" class="form-control" />
		</div>
	</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Physician</div>
<div class="panel-body">
	<table class="table">
		<thead>
			<tr>
				<th>Role</th>
				<th>Name</th>
				<th>Phone</th>
				<th>NPI</th>
				<th>Notify</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
				<select name="physician[0][role]" class="form-control">
					<option>Attending</option>
					<option>Secondary</option>
				</select>
				</td>
				<td>
				<input type="text" name="physician[0][name]" class="form-control" id="physician0_name" />
				</td>
				<td>
				<input type="text" class="form-control disabled" id="physician0_phone" />
				</td>
				<td>
				<input type="text" class="form-control disabled" id="physician0_npi" />
				</td>
				<td>
				<input type="checkbox" class="form-control" name="physician[0][notify]" value="1" />
				</td>
				<td>
				<input type="checkbox" class="form-control" name="physician[0][delete]" value="1" />
				</td>
			</tr>
		</tbody>
	</table>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Insurance</div>
<div class="panel-body">
	<table class="table">
		<thead>
		<tr><th>Company</th>
			<th>Number</th>
			<th>Role</th>
			<th>Note</th>
			<th>Delete</th>
			</tr>
		</thead>
		<tbody>
		<tr><td><select id="insurance0_company" name="insurance[0][company]" class="form-control">
			<option>Anthem Blue Cross</option>
			<option>Blue Cross</option>
			<option>Blue Shield</option>
			<option>Medi-Cal</option>
			<option>Medicare</option>
			<option>Private Insurance</option>
			</select>
			</td>
			<td><input type="text" id="insurance0_number" name="insurance[0][number]" class="form-control" /></td>
			<td><select class="form-control" name="insurance[0][role]" id="insurance0_role">
				<option>Primary</option>
				<option>Secondary</option>
				<option>Inactive</option>
				</select></td>
			<td><input type="text" name="insurance[0][note]" id="insurance0_note" class="form-control" /></td>
			<td><input type="checkbox" id="insurance0_delete" name="insurance[0][delete]" class="form-control" /></td>
		</tr>
		</tbody>
	</table>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">Certifications</div>
<div class="panel-body">
	<div class="row">
		<div class="col-md-2 form-group">
			<label for="cert0_number">Cert #</label>
			<select name="cert[0][number]" id="cert0_number" class="form-control">
			<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
			</select>
		</div>
		<div class="col-md-3 form-group">
			<label for="cert0_type">Type</label>
			<select name="cert[0][type]" id="cert0_type" class="form-control">
			<option>Medicare</option>
			<option>Medi-Cal</option>
			<option>Private</option>
			<option>Other</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="cert0_start">Start</label>
			<input type="text" class="form-control date" name="cert[0][start_date]" id="cert0_start" />
		</div>
		<div class="col-md-2 form-group">
			<label for="cert0_end">End</label>
			<input type="text" class="form-control date" name="cert[0][end_date]" id="cert0_end" />
		</div>
		<div class="col-md-3 form-group">
			<label for="cert0_signed">Signed</label>
			<input type="text" class="form-control date" name="cert[0][signed]" id="cert0_signed" />
		</div>
		<div class="col-md-5 form-group">
			<label for="cert0_physician1">Physician</label>
			<select name="cert[0][physician][0]" id="cert0_physician1" class="form-control">
			<option>Someone</option>
			</select>
		</div>
		<div class="col-md-5 form-group">
			<label for="cert0_physician2">Physician</label>
			<select name="cert[0][physician][1]" id="cert0_physician2" class="form-control">
			<option>Someone Else</option>
			</select>
		</div>
		<div class="col-md-2 form-group">
			<label for="cert0_transfer">
				<input type="checkbox" name="cert[0][transfer]" value="1" />
				Transfer In
			</label>
		</div>
		<div class="col-md-1 form-group">
			<label for="cert0_f2f">
				<input type="checkbox" name="cert[0][f2f]" value="1" />
				F2F
			</label>
		</div>
	</div>
</div>
</div>