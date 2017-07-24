<?php
/**
 * Description: This is the description of the document.
 * You can add as many lines as you want.
 * Remember you're not coding for yourself. The world needs your doc.
 * Example usage:
 * <pre>
 * if (Example_Class::example()) {
 *    echo "I am an example.";
 * }
 * </pre>
 *
 * @author		Michaël V. Dandrieux <mvd@eranos.fr>
 * @copyright	Copyright © 2004-2013, Café Central
 * @license		http://grandcentral.fr/license MIT License
 * @access		public
 * @link		http://grandcentral.fr
 */
/********************************************************************************************/
//	Ajax
/********************************************************************************************/
	// print '<pre>';print_r($_POST);print'</pre>';
/********************************************************************************************/
//	Template list
/********************************************************************************************/
	$app = app($_POST['appkey'], null, json_decode($_POST['valueParam'], true));
	$templates = $app->get_templates(null, $_POST['env']);
	$fparams = array(
		'label' => 'template : ',
		'values' => $templates,
		'valuestype' => 'array',
		'value' => $_POST['valueTemplate']
	);
	$fieldTemplate = new fieldSelect($_POST['name'].'[template]', $fparams);
/********************************************************************************************/
//	Params
/********************************************************************************************/
	$params['app'] = $app;
	$fieldParam = app('field', 'app.param', $params);
?>