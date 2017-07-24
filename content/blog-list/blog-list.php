<?php

  $page = i('page',current);
  // get all news
  $news = i('blog',[
    'order()' => 'created DESC'
  ]);

 ?>
