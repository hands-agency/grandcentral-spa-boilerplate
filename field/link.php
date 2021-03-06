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
//	Bind
/********************************************************************************************/
	$_APP->bind_file('css', 'css/addable.css');
	$_APP->bind_file('css', 'css/array.css');
	$_APP->bind_file('script', 'js/addable.js');
	$_APP->bind_file('script', 'js/array.js');
	$_APP->bind_code('script', '$(\'li[data-type="link"]\').addable();');
	
/********************************************************************************************/
//	Some vars
/********************************************************************************************/
//	For easier access
	$_FIELD = $_PARAM['field'];

//	Hide or show the nodata
	$hideNodata = '';
//	The data from the DB
	$data = '';
//	The add buttons
	$addbuttons = '';
//	The html templates for jQuery
	$template = '';

/********************************************************************************************/
//	Set defaults
/********************************************************************************************/
//	List of available rel
	$available = array('array');
	
//	Default field attributes for all fields
	$params[] = array(
		'type' => 'text',
		'key' => 'url',
		'placeholder' => 'Url',
	);
	$params[] = array(
		'type' => 'text',
		'key' => 'title',
		'placeholder' => 'Legend',
	);
		
/********************************************************************************************/
//	The list of add buttons
/********************************************************************************************/
	foreach ($available as $field) $addbuttons .= '<li><button type="button" data-type="'.$field.'">'.$field.'</button></li>';

/********************************************************************************************/
//	Print the data from the Database
/********************************************************************************************/
	$values = $_FIELD->get_value();
	foreach ((array) $values as $key => $value)
	{
		$li = '';
		foreach ($params as $param)
		{
		//	Field
			$class = 'field'.ucfirst($param['type']);
		//	Key and value fields are differents
			if (isset($param['customdata']['associative']))
			{
				$field = new $class(null, $param);
				$field->set_value($key);
			}
			else
			{
				$field = new $class($_FIELD->get_name().'['.$key.']', $param);
				$field->set_value($value);
			}
		//	Label
			$label = $field->get_label();
			$field->set_label('');
		//	Li
			$li .= '<li data-type="'.$field->get_type().'">'.$field.'</li>';
		}
		$data .= '<li><ol>'.$li.'</ol><button type="button" class="delete"></button></li>';
	}
//	No data
	if ($values) $hideNodata = 'style="display:none;"';

/********************************************************************************************/
//	Now we can build the templates used when creating new fields
/********************************************************************************************/
//	It's a template, these fields MUST be disabled (appending will enable them)
 	for ($i=0; $i < count($params); $i++) $params[$i]['disabled'] = true;
	$li = '';
	foreach ($params as $param)
	{
	//	Field
		$class = 'field'.ucfirst($param['type']);	
	//	Key and value fields are differents
		if (isset($param['customdata']['associative'])) $field = new $class(null, $param);
		else $field = new $class($_FIELD->get_name().'[]', $param);
	//	Label
		$field->set_label('');
		$li .= '<li data-type="'.$field->get_type().'">'.$field.'</li>';
	}
	
//	We store them in jscript vars, so that the addable.js plugin can retrieve them
	$html = '<li style="display:none;"><ol>'.$li.'</ol><button type="button" class="delete"></li>';
	$template['array'] = $html;
?>