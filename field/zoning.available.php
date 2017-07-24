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
//	Get and process from ajax
/********************************************************************************************/
//	The field name
//	$name = $_POST['name'];
	$name = $_SESSION['pref']['handled_env'].'_section';
//	Get the available values
	$available = i('app', all);
//	Refine
	if (isset($_POST['q'])) {
		echo 'TODO refined with '.$_POST['q'];
	}
?>