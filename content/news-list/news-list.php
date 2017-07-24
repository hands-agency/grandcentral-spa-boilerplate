<?php

  // get all news
  $news = i('news',[
    'version' => i('version',current)->get_nickname(),
    'order()' => 'created DESC'
  ]);

 ?>
