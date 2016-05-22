<div class="panel panel-default">
	<table class="table">
		<thead>
			<tr>
			<th>Patient</th>
			<th>DOB</th>
			<th>Age</th>
			<th>Status</th>
			<th>Triage</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td>
				{$patient.last_name}, {$patient.first_name}
			</td>
			<td>
				{$patient.birthdate}
			</td>
			<td>
				{if $patient.birthdate}
				{math equation="floor((n-b)/31536000)" n=$smarty.now b=$patient.birthdate|strtotime}
				{/if}
			</td>
			<td>
				{$patient.status}				
			</td>
			</tr>
		</tbody>
	</table>
	<hr style="margin-top:6px;margin-bottom:6px">
	<table class="table">
		<thead>
			<tr>
			<th>ICD 9</th>
			<th>ICD 10</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td>
			{foreach from=$diagnosis item=diag}
			{if $diag.source eq "ICD9 PRIMARY"}
			{$diag.diagnosis}<br>
			{/if}
			{/foreach}
			</td>
			<td>
			{foreach from=$diagnosis item=diag}
			{if $diag.source eq "ICD10 PRIMARY"}
			{$diag.diagnosis}<br>
			{/if}
			{/foreach}
			</td>
			</tr>
		</tbody>
	</table>
</div>
