<ul>
<?php foreach ($news as $n): ?>
  <li><a href="<?= $n['url'] ?>"><?= $n['title'] ?></a></li>
<?php endforeach; ?>
</ul>
