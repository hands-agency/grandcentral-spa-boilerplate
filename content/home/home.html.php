<?php
  $title = new attrI18n($_PARAM['title']);
  $descr = new attrI18n($_PARAM['descr']);
  $descr->set_field('fieldSirtrevor');
?>
<h1><?= $title ?></h1>
<p><?= $descr ?></p>
