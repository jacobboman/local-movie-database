<?php get_header($page_title); ?>

<h1>Professionals</h1>

<ul>
  <?php foreach ($professionals as $professional) { ?>
    <li><a href="/local-movie-database/professionals/?id=<?php echo $professional->pro_id; ?>"><?php echo $professional->name; ?></a></li>
   <?php
  } ?>
</ul>

<?php get_footer(); ?>
