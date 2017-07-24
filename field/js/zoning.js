$(document).ready(function () {
/*********************************************************************************************
/**	* Multiple
* 	* @author	@mvdandrieux
**#******************************************************************************************/
	$('.zoning').multipleselect({		
		app:'field',
		theme:'default',
		template:'/zoning.available',
	});

/*********************************************************************************************
/**	* Popup
* 	* @author	@mvdandrieux
**#******************************************************************************************/
	$('.zoning .selected li .title').popup(
	{
		app: 'field',
		theme: 'default',
		template: 'zoning.config',
		width:'60%',
		handled_app: ''+$(this).parent().find('input').val()+'',
	});
});