<style type="text/css">
B { font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold; }
table { border-collapse: collapse; }
table table { max-width: 100%; }
.cTableBorder { border: 1px solid black; }
.cTableBorder td { font-family: verdana; font-size: 8px; }
.cBorderRight { border-right: 1px solid black; }
.cBorderTop { border-top: 1px solid black; }
.cBorderTopRight { border-top: 1px solid gray; border-right: 1px solid black; }
strong {
	padding-left: 4px;
}
strong.strongNoPadd {
	padding-left: 0px;
}
.cText {
	height: 15px;
	font-size: 10px;
	border: 1px #FFAAAA solid;
	padding: none;
}
</style>

<table cellspacing="0" cellpadding="0" class="cTableBorder" id="Table92" width="650">
<tbody><tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table93">
		<tbody><tr>
			<td width="189" class="cBorderRight" valign="top">
				<table width="100%" cellpadding="1" cellspacing="0" id="Table94">
					<tbody><tr>
						<td style="background-color: #EFEFEF;" class="cBorderRight">
							<b>Billing Group</b>
						</td>
						<td nowrap="">
							{$billing.group}
						</td>
					</tr>
					<tr>
						<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
							<b>Billing Provider</b>
						</td>
						<td>
							{$billing.provoder}
						</td>
					</tr>
					<tr>
						<td style="background-color: #EFEFEF;" class="cBorderRight">
							<b>Address</b>
						</td>
						<td nowrap="">
							{$billing.address}
						</td>
					</tr>
					<tr>
						<td style="background-color: #EFEFEF;" class="cBorderRight">
							<b>City, State, Zip</b>
						</td>
						<td>
							{$billing.city}, {$billing.state}, {$billing.zip}
						</td>
					</tr>
					<tr>
						<td style="background-color: #EFEFEF;" class="cBorderRight">
							<b>Phone</b>
						</td>
						<td>
							{$billing.phone}									
						</td>
					</tr>

					<tr>
						<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
							<b>Billing Prov.PIN#</b>
						</td>
						<td>
							{$billing.pin}
						</td>
					</tr>
				</tbody></table>
			</td>
			
			<td width="189" class="cBorderRight" valign="top">

			<table width="100%" cellpadding="1" cellspacing="0" id="Table95">
				<tbody><tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight" width="65">
						<b>Pay-To Group</b>
					</td>
					<td nowrap="">
						{$payto.group}
					</td>
				</tr>
				<tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
						{$payto.provider}
					</td>
					<td>
						
					</td>
				</tr>
				<tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
						Address
					</td>
					<td nowrap="">
						{$payto.address}
					</td>
				</tr>
				<tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
						City, State, Zip
					</td>
					<td>
						{$payto.city}, {$payto.state}, {$payto.zip}
					</td>
				</tr>
				<tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
						Phone
					</td>
					<td>
						{$payto.phone}							
					</td>
				</tr>
				<tr>
					<td style="background-color: #EFEFEF;" nowrap="" class="cBorderRight">
						Pay-To Tax ID
					</td>
					<td>
						{$payto.taxid}
					</td>
				</tr>
			</tbody></table>

			</td>
			
			<td width="272" valign="top">
				<table width="100%" cellspacing="0" cellpadding="0" border="0" id="Table96">
				<tbody><tr>
					<td valign="top" width="100%">
						<table width="100%" cellpadding="2" cellspacing="0" id="Table97">
							<tbody><tr>
								<td width="90" class="cBorderRight">
									3a. Pat. Cntl #
								</td>
								<td width="91" class="cBorderRight">
									{$patient.cntl}
								</td>
								<td width="90" style="background-color: #F5F5F5;">
									4. Type of Bill
								</td>
							</tr>
							<tr>
								<td width="90" class="cBorderTopRight" style="background-color: #EFEFEF;">
									b. Med. Rec.#
								</td>
								<td width="91" class="cBorderTopRight" style="background-color: #EFEFEF;">
									{$patient.mr_num}
								</td>
								<td width="90" class="cBorderTop">
									{$bill.type}
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
				</tbody></table>

				<table width="100%" cellspacing="0" cellpadding="0" border="0" id="Table98">
				<tbody><tr>
					<td valign="top" width="100%">
						<table width="100%" cellpadding="2" cellspacing="0" id="Table99">
							<tbody><tr>
								<td width="100" class="cBorderTopRight" valign="top">
									5 Fed. Tax No.
								</td>
								<td width="200" class="cBorderTopRight" style="background-color: #EFEFEF;" colspan="2">
									<table width="100%" height="100%" cellspacing="0" cellpadding="0" id="Table100">
									<tbody><tr height="11">
										<td colspan="2">
											6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Statement Covers Period
										</td>
									</tr>	
									<tr height="11">
										<td width="108" align="center">
											From
										</td>
										<td align="center">
											Through&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
									</tr>
									</tbody></table>
								</td>
								<td width="54" class="cBorderTop" rowspan="2" valign="top">
									7
								</td>
							</tr>
							<tr>
								<td width="100" class="cBorderTopRight" valign="top">
									{$patient.tax_no}&nbsp;
								</td>
								<td width="100" class="cBorderTopRight" nowrap="">
									{$statement.from}
									<br>
								</td>
								<td width="100" class="cBorderTopRight" nowrap="">
									{$statement.to}
									<br>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
				</tbody></table>

			</td>
		</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table101">
		<tbody><tr>
			<td width="231" class="cBorderRight" valign="top">
				<table width="100%" cellspacing="0" cellpadding="2" border="0" id="Table102">
				<tbody><tr>
					<td width="8" class="cBorderTop" style="background-color: #EFEFEF;">
						8
					</td>
					<td width="63" class="cBorderTopRight" style="background-color: #EFEFEF;">
						Patient Name
					</td>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						a.
					</td>
					<td width="150" class="cBorderTop">
						&nbsp;ID {$patient.code}
					</td>
				</tr>
				</tbody></table>						
				<table width="100%" cellspacing="0" cellpadding="2" border="0" id="Table103">
				<tbody><tr>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						b.
					</td>
					<td width="222" class="cBorderTop">
						Last {$patient.last_name|@strtoupper}
						First {$patient.first_name|@strtoupper}
						MI {$patient.middle_initial}
					</td>
				</tr>
				</tbody></table>						
			</td>

			<td width="418" class="cBorderTop" valign="top">
				<table width="100%" cellspacing="0" cellpadding="2" border="0" id="Table104">
				<tbody><tr>
					<td width="8" style="background-color: #EFEFEF;">
						9
					</td>
					<td width="63" class="cBorderRight" nowrap="" style="background-color: #EFEFEF;">
						Patient Address
					</td>
					<td width="8" class="cBorderRight" style="background-color: #EFEFEF;">
						a.
					</td>
					<td width="333" colspan="7">
						Street: {$patient.address|@strtoupper}
					</td>
				</tr>
				</tbody></table>						
				<table width="100%" cellspacing="0" cellpadding="2" border="0" id="Table105">
				<tbody><tr>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						b.
					</td>
					<td width="144" class="cBorderTopRight" nowrap="">
						City: {$patient.city|@strtoupper}
					</td>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						c.
					</td>
					<td width="61" class="cBorderTopRight" nowrap="">
						State: {$patient.state}
					</td>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						d.
					</td>
					<td width="70" class="cBorderTopRight" nowrap="">
						Zip: {$patient.zip}
					</td>
					<td width="8" class="cBorderTopRight" style="background-color: #EFEFEF;">
						e.
					</td>
					<td width="90" class="cBorderTop" nowrap="">
						Country Code: 
					</td>
				</tr>
				</tbody></table>
			</td>
		</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		
		<table width="650" cellspacing="0" cellpadding="0" id="Table106">
			<tbody><tr>
				<td class="cBorderTop">
					<table width="57" cellspacing="0" cellpadding="0" id="Table107">
						<tbody><tr height="22">
							<td class="cBorderRight" nowrap="" align="center">
								10 Birthdate
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" nowrap="" height="12" align="center">
								{$patient.birthdate|date_format:"%m"} /
								{$patient.birthdate|date_format:"%e"} /
								{$patient.birthdate|date_format:"%Y"}
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop" align="left">
					<table width="28" cellspacing="0" cellpadding="0" id="Table108">
						<tbody><tr height="22">
							<td class="cBorderRight" align="center" nowrap="">
								11 Sex
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								{$patient.sex}
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="173" cellspacing="0" cellpadding="0" id="Table109">
						<tbody><tr height="11">
							<td colspan="4" align="center" class="cBorderRight" nowrap="" style="background-color: #EFEFEF;">
								Admission
							</td>
						</tr>
						<tr height="11">
							<td class="cBorderRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								12 Date
							</td>
							<td class="cBorderRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								13 HR
							</td>
							<td class="cBorderRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								14 Type
							</td>
							<td class="cBorderRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								15 Src
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" nowrap="">
								{$patient.admission_date}
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								{$patient.admission_type}&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								{$patient.admission_src}&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop" align="left">
					<table width="28" cellspacing="0" cellpadding="0" id="Table110">
						<tbody><tr height="22">
							<td class="cBorderRight" align="center" nowrap="">
								16 DHR
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" height="12" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="28" cellspacing="0" cellpadding="0" id="Table111">
						<tbody><tr height="22">
							<td class="cBorderRight" align="center" nowrap="">
								17 Stat
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" height="12" align="center">
								{$patient.stat}&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="268" cellspacing="0" cellpadding="0" id="Table113">
						<tbody><tr height="11">
							<td class="cBorderRight" colspan="11" align="center" style="background-color: #EFEFEF;">
								Condition  Codes
							</td>
						</tr>
						<tr height="11">
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								18
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								19
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								20
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								21
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								22
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								23
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								24
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								25
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								26
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								27
							</td>
							<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								28
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>

				<td class="cBorderTop">
					<table width="43" cellspacing="0" cellpadding="0" id="Table114">
						<tbody><tr height="22">
							<td class="cBorderRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								29 Accident<br>
								State
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>

				<td class="cBorderTop">
					<table width="15" cellspacing="0" cellpadding="0" id="Table115">
						<tbody><tr height="22">
							<td align="center" style="background-color: #EFEFEF;">
								30
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTop" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
		
	</td>
</tr>

<tr>
	<td> 
		<table width="650" cellspacing="0" cellpadding="0" id="Table116">
			<tbody><tr>
				<td class="cBorderTop">
					<table width="75" cellspacing="0" cellpadding="1" id="Table117">
						<tbody><tr height="11">
							<td colspan="2" class="cBorderRight" align="center" style="background-color: #EFEFEF;">
								31 Occurence
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Date
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="75" cellspacing="0" cellpadding="1" id="Table118">
						<tbody><tr height="11">
							<td colspan="2" align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								32 Occurence
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								Date
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="75" cellspacing="0" cellpadding="1" id="Table119">
						<tbody><tr height="11">
							<td colspan="2" align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								33 Occurence
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Date
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="75" cellspacing="0" cellpadding="1" id="Table120">
						<tbody><tr height="11">
							<td colspan="2" align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								34 Occurence
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #F5F5F5;">
								Date
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>
				<td class="cBorderTop">
					<table width="144" cellspacing="0" cellpadding="1" id="Table121">
						<tbody><tr height="11">
							<td colspan="3" align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								35 Occurence Span
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								From								
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Through
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>

				<td class="cBorderTop">
					<table width="144" cellspacing="0" cellpadding="1" id="Table122">
						<tbody><tr height="11">
							<td colspan="3" align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								36 Occurence Span
							</td>
						</tr>
						<tr height="11">
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Code
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								From
							</td>
							<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
								Through
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
							<td class="cBorderTopRight" align="center" nowrap="">
								/
								/
								
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
							<td class="cBorderTopRight" align="center" nowrap="" style="background-color: #EFEFEF;">
								/
								/
								
							</td>
						</tr>
					</tbody></table>
				</td>

				<td class="cBorderTop">
					<table width="62" cellspacing="0" cellpadding="1" id="Table123">
						<tbody><tr height="11">
							<td style="background-color: #EFEFEF;">
								37 Reason
							</td>
						</tr>
						<tr height="11">
							<td style="background-color: #EFEFEF;">
								For Delay
							</td>
						</tr>
						<tr height="12">
							<td align="center" class="cBorderTop">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td align="center" class="cBorderTop" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table124">
			<tbody><tr>
				<td valign="top">
					<table width="314" cellspacing="0" cellpadding="0" id="Table125">
						<tbody><tr>
							<td class="cBorderTopRight" valign="top">
								<table width="100%" cellspacing="0" cellpadding="0" border="0" id="Table126">
									<tbody><tr>
										<td colspan="3" valign="top">
											&nbsp;38 Subscriber Information
										</td>
									</tr>
									<tr>
										<td width="21">
											&nbsp;
										</td>
										<td>
											First Name:
										</td>
										<td>
											{$patient.first_name|@strtoupper}
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td>
											Middle Initial:
										</td>
										<td>
											{$patient.middle_initial}
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td>
											Last Name:
										</td>
										<td>
											{$patient.last_name|@strtoupper}
										</td>
										
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td>
											Street Address:
										</td>
										<td>
											{$patient.address|@strtoupper}
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;
										</td>
										<td valign="top">
											City, State, Zip:
										</td>
										<td>
											{$patient.city|@strtoupper},&nbsp; 
											{$patient.state}&nbsp;
											{$patient.zip}
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
				</td>

				<td valign="top">
					<table width="10" cellspacing="0" cellpadding="0" id="Table127">
						<tbody><tr>
							<td class="cBorderTopRight" valign="top">
								<table width="100%" cellspacing="0" cellpadding="0" id="Table128">
									<tbody><tr height="11">
										<td align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="11">
										<td align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12">
										<td align="center">
											&nbsp;a
										</td>
									</tr>
									<tr height="12">
										<td align="center">
											&nbsp;b
										</td>
									</tr>
									<tr height="12">
										<td align="center">
											&nbsp;c
										</td>
									</tr>
									<tr height="12">
										<td align="center">
											&nbsp;d
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
				</td>

				<td valign="top">
					<table width="325" cellspacing="0" cellpadding="0" id="Table129">
						<tbody><tr>
							<td>
								<table width="108" cellspacing="0" cellpadding="0" id="Table130">
									<tbody><tr height="11">
										<td colspan="2" align="center" class="cBorderTopRight" style="background-color: #EFEFEF;">
											39 Value Codes
										</td>
									</tr>
									<tr height="11">
										<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
											Code
										</td>
										<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
											Amount
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>
							<td>
								<table width="108" cellspacing="0" cellpadding="0" id="Table131">
									<tbody><tr height="11">
										<td colspan="2" align="center" class="cBorderTopRight" style="background-color: #EFEFEF;">
											40 Value Codes
										</td>
									</tr>
									<tr height="11">
										<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
											Code
										</td>
										<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
											Amount
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>
							<td>
								<table width="108" cellspacing="0" cellpadding="0" id="Table132">
									<tbody><tr height="11">
										<td colspan="2" align="center" class="cBorderTop" style="background-color: #EFEFEF;">
											41 Value Codes
										</td>
									</tr>
									<tr height="11">
										<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
											Code
										</td>
										<td align="center" style="background-color: #EFEFEF;">
											Amount
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="12" style="background-color: #EFEFEF;">
										<td class="cBorderTopRight" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" align="center">
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="1" id="Table133">
			<tbody><tr>
				<td width="14" align="center" class="cBorderTopRight" nowrap="">
					&nbsp;
				</td>
				<td width="54" class="cBorderTopRight" nowrap="">
					&nbsp;42 Rev. Cd.
				</td>
				<td width="99" class="cBorderTopRight" nowrap="">
					&nbsp;43 Description
				</td>
				<td width="20" class="cBorderTopRight" nowrap="">
					SVC<br>Qual
				</td>
				<td width="80" class="cBorderTopRight" nowrap="">
					&nbsp;44 HCPCS/Rate/<br>
					&nbsp;HCPCS Code
				</td>
				<td width="72" class="cBorderTopRight" nowrap="">
					&nbsp;45 Serv. Date
				</td>
				<td width="35" class="cBorderTopRight" nowrap="">
					&nbsp;46 Serv.<br>
					&nbsp;Units
				</td>
				<td width="65" class="cBorderTopRight" nowrap="">
					&nbsp;47 Total<br>Charges
				</td>
				<td width="65" class="cBorderTopRight" nowrap="">
					&nbsp;48 Non-Cov.<br>
					&nbsp;Charges
				</td>
				<td width="111" class="cBorderTop" nowrap="">
					&nbsp;49 NDC<br>
					&nbsp;Code, Charge, Unit, Meas.
				</td>
			</tr>
					
		{foreach from=$service_entries item=row key=index}
				
			<tr style="background-color: #{if $index % 2 eq 1}FFFFFF{else}EFEFEF{/if};">
				<td width="14" align="center" class="cBorderTopRight" nowrap="">
					{math equation="i+1" i=$index}
				</td>
				<td class="cBorderTopRight" align="left">
					&nbsp;{$row.rev_code}
				</td>
				<td class="cBorderTopRight" align="left">
					&nbsp;{$row.description}
				</td>
				<td class="cBorderTopRight">
					&nbsp;{$row.svc_qual}
				</td>
				<td class="cBorderTopRight" align="left">
					&nbsp;{$row.hcpcs_code}					
				</td>
				<td class="cBorderTopRight" align="left">
					&nbsp;{$row.service_from}&nbsp;{$row.service_to}
				</td>
				<td class="cBorderTopRight" align="center">
					{$row.service_units}&nbsp;
				</td>
				<td class="cBorderTopRight" align="right">
					{$row.charges}&nbsp;
				</td>
				<td class="cBorderTopRight" align="right">
					{$row.noncov}&nbsp;
				</td>
				<td class="cBorderTop" align="left">
					&nbsp;{$row.ndc_code}
				</td>
			</tr>
				
		{/foreach}

			
			
			<tr height="22">
				<td class="cBorderTopRight" align="center" colspan="2">
					&nbsp;
				</td>
				<td class="cBorderTop" colspan="2">
					&nbsp;<i>PAGE ___ OF ___ </i>
				</td>
				<td class="cBorderTopRight" align="right">
					<i>CREATION DATE</i>&nbsp;
				</td>
				<td class="cBorderTopRight" align="center">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="right">
					<i>TOTALS</i>&nbsp;<!-- <img src="ADAClaimFix/arrow.gif"> -->
				</td>
				<td class="cBorderTopRight" align="right">
					{$total_charges}&nbsp;
				</td>
				<td class="cBorderTopRight" align="right">
					{$total_noncov}0.00&nbsp;
				</td>
				<td class="cBorderTop" align="center">
					&nbsp;
				</td>
			</tr>
			
			
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table134">
			<tbody><tr>
				<td>
					<table cellspacing="0" cellpadding="0" id="Table135">
						<tbody><tr>
							<td>
								<table cellspacing="0" cellpadding="0" id="Table136">
									<tbody><tr>
										<td>	
											<table width="137" cellspacing="0" cellpadding="0" id="Table137">
												<tbody><tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;50 Payer
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;A {$payer.name}
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;B 
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;C 
													</td>
												</tr>
											</tbody></table>
										</td>
										<td>	
											<table width="36" cellspacing="0" cellpadding="0" id="Table138">
												<tbody><tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;">
														Payer ID
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														{$payer.code}&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
										<td>
											<table width="57" cellspacing="0" cellpadding="0" id="Table139">
												<tbody><tr height="12">
													<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;51 Health Plan ID
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														{$payer.health_plan_id}&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
										<td>
											<table width="107" height="100%" cellspacing="0" cellpadding="0" id="Table140">
												<tbody><tr height="12">
													<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
														52 Rel. Info
													</td>
													<td class="cBorderTopRight" align="center" style="background-color: #EFEFEF;">
														53 ASG Ben.
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														{$payer.rel_info}&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														{$payer.asg_ben}&nbsp;
													</td>
												</tr>
												<tr height="12" style="background-color: #EFEFEF;">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
										
										<td>
											<table width="83" cellspacing="0" cellpadding="0" id="Table141">
												<tbody><tr height="12">
													<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;54 Prior Payments
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
										<td>
											<table width="73" cellspacing="0" cellpadding="0" id="Table142">
												<tbody><tr height="12">
													<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;55 Est.Amt.Due
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>

										<td>
											<table width="51" cellspacing="0" cellpadding="0" id="Table143">
												<tbody><tr height="12">
													<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
														56 NPI (Bill.Prov.)
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;57
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;Other
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;Provider ID
													</td>
												</tr>
											</tbody></table>
										</td>

										<td>
											<table width="61" cellspacing="0" cellpadding="0" id="Table144">
												<tbody><tr height="12">
													<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;{$payer.npi}
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;
													</td>
												</tr>
												<tr height="12">
													<td class="cBorderTopRight">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>

									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
				</td>	
			</tr>
		</tbody></table>
	</td>
</tr>
<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table145">
			<tbody><tr>
				<td>
					<table width="168" height="100%" cellspacing="0" cellpadding="0" id="Table146">
						<tbody><tr height="12">
							<td class="cBorderTopRight" align="left" style="background-color: #EFEFEF;">
								&nbsp;58 Insured's Name (First, MI, Last)
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;A {$patient.first_name|@strtoupper}
								&nbsp; 		
								&nbsp;{$patient.last_name|@strtoupper}
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;B 		
								&nbsp; 		
								&nbsp; 
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;C 		
								&nbsp; 		
								&nbsp; 
							</td>
						</tr>
					</tbody></table>
				</td>
				
				<td>
					<table width="114" height="100%" cellspacing="0" cellpadding="0" id="Table158">
						<tbody><tr height="12">
							<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;59 Patient Relation
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								{$patient.relation}&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td>
					<table width="114" height="100%" cellspacing="0" cellpadding="0" id="Table159">
						<tbody><tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;" nowrap="">
								&nbsp;60 Insured's Unique ID
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								{$patient.code}&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td>
					<table width="121" height="100%" cellspacing="0" cellpadding="0" id="Table160">
						<tbody><tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;61 Group Name
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td>
					<table width="133" height="100%" cellspacing="0" cellpadding="0" id="Table161">
						<tbody><tr height="12">
							<td class="cBorderTop" style="background-color: #EFEFEF;" nowrap="">
								&nbsp;62 Insurance Group No
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTop" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTop" style="background-color: #EFEFEF;" align="center">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTop" align="center">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table162">
			<tbody><tr>
				<td>
					<table width="216" cellspacing="0" cellpadding="0" id="Table163">
						<tbody><tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;63 Treatment Authorization Codes
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;A {$treatment_auth}
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;B 
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;C 
							</td>
						</tr>
					</tbody></table>
				</td>
				<td>
					<table width="216" cellspacing="0" cellpadding="1" id="Table164">
						<tbody><tr height="12">
							<td nowrap="" class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;64 Document Control Number
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTopRight">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
				<td>
					<table width="216" cellspacing="0" cellpadding="1" id="Table165">
						<tbody><tr height="12">
							<td nowrap="" class="cBorderTop" style="background-color: #EFEFEF;">
								&nbsp;65 Employer Name
							</td>
						</tr>	
						<tr height="12">
							<td class="cBorderTop">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTop" style="background-color: #EFEFEF;">
								&nbsp;
							</td>
						</tr>
						<tr height="12">
							<td class="cBorderTop">
								&nbsp;
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>


<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table166">
			<tbody><tr height="11">
				<td class="cBorderTopRight" style="background-color: #EFEFEF;">
					&nbsp;66
					<br>
					&nbsp;ICD Ind.
				</td>
				
				<td class="cBorderTopRight" align="center" valign="top" width="79" nowrap="">
					67 Primary Diag.<br>
					Code: &nbsp;{$patient.diagnosis.0.code}
				</td>
				<td class="cBorderTopRight" align="center" width="94">
					Other Diag. Codes<br>
					(A-Q) - A:&nbsp;
				</td>
				<td class="cBorderTopRight" align="center">
					B 
				</td>
				<td class="cBorderTopRight" align="center">
					C 
				</td>
				<td class="cBorderTopRight" align="center">
					D 
				</td>
				<td class="cBorderTopRight" align="center">
					E 
				</td>
				<td class="cBorderTopRight" align="center">
					F 
				</td>
				<td class="cBorderTopRight" align="center">
					G 
				</td>
				<td class="cBorderTopRight" align="center">
					H 
				</td>
				<td class="cBorderTop" valign="top">
					&nbsp;68
				</td>
			</tr>
			<tr height="11">
				<td class="cBorderTopRight">
					&nbsp;0
				</td>
				<td class="cBorderTopRight" align="center">
					I 
				</td>
				<td class="cBorderTopRight" align="center">
					J 
				</td>
				<td class="cBorderTopRight" align="center">
					K 
				</td>
				<td class="cBorderTopRight" align="center">
					L 
				</td>
				<td class="cBorderTopRight" align="center">
					M 
				</td>
				<td class="cBorderTopRight" align="center">
					N 
				</td>
				<td class="cBorderTopRight" align="center">
					O 
				</td>
				<td class="cBorderTopRight" align="center">
					P 
				</td>
				<td class="cBorderTopRight" align="center">
					Q 
				</td>
				<td class="cBorderTop" align="center" width="18">
					&nbsp;
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>


<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table167">
			<tbody><tr height="11">
				<td class="cBorderTopRight" align="center" width="38" style="background-color: #EFEFEF;">
					69 Admit<br>
					DX
				</td>
				
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="51" style="background-color: #EFEFEF;">
					70 Patient
					Reason DX
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="40" style="background-color: #EFEFEF;">
					71 PPS<br>
					Code
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="21" style="background-color: #EFEFEF;">
					72<br>
					ECI
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTopRight" align="center" width="54">
					&nbsp;
				</td>
				<td class="cBorderTop" align="center">
					73
				</td>
			</tr>
		</tbody></table>
	</td>
</tr>

<tr>
	<td>
		<table width="650" cellspacing="0" cellpadding="0" id="Table168">
			<tbody><tr>
				
				<td valign="top">
					<table width="415" cellspacing="0" cellpadding="0" id="Table169">
						<tbody><tr>
							<td valign="top">
								<table width="415" cellspacing="0" cellpadding="0" id="Table170">
									<tbody><tr>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table171">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;74&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Principal Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #EFEFEF;">
														Code
													</td>
													<td align="center" class="cBorderRight" style="background-color: #EFEFEF;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table172">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #F5F5F5;">
														&nbsp;a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #F5F5F5;">
														Code
													</td>
													<td class="cBorderRight" align="center" style="background-color: #F5F5F5;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table173">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #EFEFEF;">
														Code
													</td>
													<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="36" cellspacing="0" cellpadding="1" id="Table174">
												<tbody><tr height="33">
													<td class="cBorderTopRight" valign="top">
														&nbsp;75
													</td>
												</tr>
											</tbody></table>

										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<table width="415" cellspacing="0" cellpadding="0" id="Table175">
									<tbody><tr>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table176">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #F5F5F5;">
														&nbsp;c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other&nbsp;Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #F5F5F5;">
														Code
													</td>
													<td class="cBorderRight" align="center" style="background-color: #F5F5F5;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table177">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #EFEFEF;">
														&nbsp;d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #EFEFEF;">
														Code
													</td>
													<td class="cBorderRight" align="center" style="background-color: #EFEFEF;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="126" cellspacing="0" cellpadding="0" id="Table178">
												<tbody><tr height="11">
													<td colspan="2" class="cBorderTopRight" style="background-color: #F5F5F5;">
														&nbsp;e.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Procedure
													</td>
												</tr>
												<tr height="11">
													<td align="center" style="background-color: #F5F5F5;">
														Code
													</td>
													<td class="cBorderRight" align="center" style="background-color: #F5F5F5;">
														Date
													</td>
												</tr>
												<tr height="11">
													<td class="cBorderTopRight" align="center">
														&nbsp;
													</td>
													<td class="cBorderTopRight" align="center">
														 /
														 /
														
													</td>
												</tr>
											</tbody></table>
										</td>
										<td valign="top">
											<table width="36" cellspacing="0" cellpadding="1" id="Table179">
												<tbody><tr height="33">
													<td class="cBorderRight" align="center">
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
					
					<table width="415" height="100%" cellspacing="0" cellpadding="0" border="0" id="Table180">
						<tbody><tr>
							<td class="cBorderTopRight" valign="top" width="150">
								<table id="Table181">
									<tbody><tr>
										<td valign="top">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											{$payer.name}&nbsp;<br>
											{$payer.address}&nbsp;<br>
											&nbsp;<br>
											&nbsp;{$payer.city},&nbsp;{$payer.state} {$payer.zip}
										</td>
									</tr>
								</tbody></table>
							</td>

							<td class="cBorderTopRight" valign="top" width="110">
								<table id="Table148">
									<tbody><tr>
										<td valign="top">
											80 Remarks
										</td>
									</tr>
									<tr>
										<td>
											<span id="spnRemarkA" runat="server"></span><br>
											<span id="spnRemarkB" runat="server"></span><br>
											<span id="spnRemarkC" runat="server"></span><br>
											<span id="spnRemarkD" runat="server"></span>
										</td>
									</tr>
								</tbody></table>
							</td>

							<td class="cBorderTopRight" valign="top" width="30" style="background-color: #EFEFEF;">
								<table id="Table182">
									<tbody><tr>
										<td valign="top" nowrap="">
											81 CC
										</td>
									</tr>
									<tr>
										<td align="center">
											a<br>
											b<br>
											c<br>
											d
										</td>
									</tr>
								</tbody></table>
							</td>
							<td class="cBorderTopRight" valign="top">
								<table id="Table183">
									<tbody><tr>
										<td valign="top">
											&nbsp;Qual.
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>
							
							<td class="cBorderTopRight" valign="top" style="background-color: #EFEFEF;">
								<table id="Table184">
									<tbody><tr>
										<td valign="top">
											&nbsp;Code
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>
							<td class="cBorderTopRight" valign="top">
								<table id="Table185">
									<tbody><tr>
										<td valign="top">
											&nbsp;Value
										</td>
									</tr>
									<tr>
										<td>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;<br>
											&nbsp;
										</td>
									</tr>
								</tbody></table>
							</td>

						</tr>
					</tbody></table>

				</td>
				
				<td valign="top">
					<table width="234" cellspacing="0" cellpadding="0" id="Table186">
						<tbody><tr>
							<td>
								<table width="234" cellspacing="0" cellpadding="0" id="Table187">
									<tbody><tr height="11">
										<td class="cBorderTopRight" width="57" style="background-color: #EFEFEF;" nowrap="">
											76 Attending
										</td>
										<td class="cBorderTopRight" width="185" align="left">
											NPI:&nbsp;{$physician.0.npi}
										</td>
										<td class="cBorderTopRight" width="25" style="background-color: #EFEFEF;" nowrap="">
											Qual
										</td>
										<td class="cBorderTopRight" width="51" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" width="120" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="11">
										<td colspan="5" class="cBorderTop" align="center" style="background-color: white">
											<table width="100%" id="Table188">
												<tbody><tr>
													<td>
														Last
													</td>
													<td>
														{$physician.0.last_name}&nbsp;
													</td>
													<td>
														First
													</td>
													<td>
														{$physician.0.first_name}&nbsp;
													</td>
													<td>
														MI
													</td>
													<td>
														{$physician.0.middle_initial}&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
						<tr>
							<td>
								<table width="234" cellspacing="0" cellpadding="0" id="Table189">
									<tbody><tr height="11">
										<td class="cBorderTopRight" nowrap="" width="57" style="background-color: #EFEFEF;">
											77 Operating
										</td>
										<td class="cBorderTopRight" width="185" align="left">
											NPI:&nbsp;{$physician.1.npi}
										</td>
										<td class="cBorderTopRight" width="25" style="background-color: #EFEFEF;" nowrap="">
											Qual
										</td>
										<td class="cBorderTopRight" width="51" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" width="120" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="11">
										<td colspan="5" class="cBorderTop" align="center" style="background-color: white">
											<table width="100%" id="Table190">
												<tbody><tr>
													<td>
														Last
													</td>
													<td>
														{$physician.1.last_name}&nbsp;
													</td>
													<td>
														First
													</td>
													<td>
														{$physician.1.first_name}&nbsp;
													</td>
													<td>
														MI
													</td>
													<td>
														{$physician.1.middle_initial}&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="234" cellspacing="0" cellpadding="0" id="Table191">
									<tbody><tr height="11">
										<td nowrap="" class="cBorderTopRight" width="45" style="background-color: #EFEFEF;">
											78 Other
										</td>
										<td class="cBorderTopRight" width="45" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" width="185" align="left">
											NPI:&nbsp;
										</td>
										<td class="cBorderTopRight" width="25" style="background-color: #EFEFEF;" nowrap="">
											Qual
										</td>
										<td class="cBorderTopRight" width="51" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" width="120" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="11">
										<td colspan="6" class="cBorderTop" align="center" style="background-color: white">
											<table width="100%" id="Table192">
												<tbody><tr>
													<td>
														Last
													</td>
													<td>
														&nbsp;
													</td>
													<td>
														First
													</td>
													<td>
														&nbsp;
													</td>
													<td>
														MI
													</td>
													<td>
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="234" cellspacing="0" cellpadding="0" id="Table193">
									<tbody><tr height="11">
										<td nowrap="" class="cBorderTopRight" width="36" style="background-color: #EFEFEF;">
											79 Other
										</td>
										<td class="cBorderTopRight" width="28" align="center">
											&nbsp;
										</td>
										<td class="cBorderTopRight" width="185" align="left">
											NPI:&nbsp;
										</td>
										<td class="cBorderTopRight" width="25" style="background-color: #EFEFEF;" nowrap="">
											Qual
										</td>
										<td class="cBorderTopRight" width="51" align="center">
											&nbsp;
										</td>
										<td class="cBorderTop" width="120" align="center">
											&nbsp;
										</td>
									</tr>
									<tr height="11">
										<td colspan="6" class="cBorderTop" align="center" style="background-color: white">
											<table width="100%" id="Table194">
												<tbody><tr>
													<td>
														Last
													</td>
													<td>
														&nbsp;
													</td>
													<td>
														First
													</td>
													<td>
														&nbsp;
													</td>
													<td>
														MI
													</td>
													<td>
														&nbsp;
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>

					</tbody></table>
				</td>
			</tr>
			
		</tbody></table>
	</td>
</tr>
</tbody></table>