$(document).ready(function () {
/*********************************************************************************************
/**	* Multiple
* 	* @author	@mvdandrieux
**#******************************************************************************************/
	$('.feed').multipleselect({
		app:'field',
		theme:'default',
		template:'/feed.available',
	});

/*********************************************************************************************
/**	* Popup
* 	* @author	@mvdandrieux
**#******************************************************************************************/
	$('.feed .selected li .title').popup({
		app:'page',
		theme:'default',
		template:'/login',
	});
});