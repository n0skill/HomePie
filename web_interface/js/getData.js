$(document).ready(function()
{
	setInterval("getData()", 500);
});

function getData()
{
	$.ajax({
	url: 'data.json',
	datatype: "json",
	timeout: 2000
	})
	.done(function(data){
		var tbl_body = "";
		$.each(data, function(index, value){
			tbl_body += "<tr>";
			tbl_body += "<td>" + value['id'] + "</td>";
			tbl_body += "<td>" + value['type'] + "</td>";
			tbl_body += "<td>" + value['value'] + "</td>";
			tbl_body += "<td><a href=\"details.html\">Details " + value['id'] + "</a></td>";
			tbl_body += "</tr>";
			});
		$("#tata").find("tr:gt(0)").remove();
		$("#tata").find('tbody:last').append(tbl_body);
		});
}
