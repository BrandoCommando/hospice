function global_load()
{
	$(".datepicker,input[name*='date']").prop("type","text").datepicker();
}
$(function(){
	$("#patient_select").on("change",function(e){
		e.preventDefault();
		var pid = $(this).val();
		$.post("quick.php?id="+pid,function(data){
			var dom = $(data);
			$("#quick_info").html(dom.find("#quick_info").html());
			$("#frmPatient").replaceWith(dom.find("#frmPatient"));
			global_load();
		});
		return false;
	}).removeAttr("onchange");
	global_load();
});