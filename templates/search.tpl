<div class="panel panel-default">
<div class="panel-body">
<form>
	<div class="form-group">
		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search" id="search" />
			<span class="input-group-btn">			
				<button type="button" class="btn btn-default">
					Search
				</button>
			</span>
		</div>
	</div>
	<div class="btn-group form-group" role="group">
		<button type="button" class="btn btn-default" onclick="window.location='quick.php'">
			Add New
		</button>
	</div>
	<div class="form-group">
	<select id="patient_select" class="form-control" name="id" size="10" onchange="this.form.submit()">
	{if $patients|default:"" ne ""}
	{foreach from=$patients item=p}
	<option value="{$p.id}">{$p.mr_num}  {$p.last_name}, {$p.first_name}</option>
	{/foreach}
	{/if}
	</select>
	</div>
</form>

</div>
</div>