// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
	 
   // Your code here
	$("#listTable tr" ).click(function(){
		alert(this.id)	
		
	});
	$('#listTable tr:odd').addClass('odd');
	$('#listTable tr::even').addClass('even');
 });