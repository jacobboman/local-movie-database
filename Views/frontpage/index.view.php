<?php get_header($page_title); ?>


<h1> <?php echo "Wälcomme to Local Movie Database!"; ?> </h1>


<h2>Our freshest movies</h2>
<ul>
  <?php 
    foreach($toplistitems as $toplistitem) { ?>
      <li><b><?php echo $toplistitem->name; ?> </b> Released: <?php echo $toplistitem->release_year; ?></li>
  <?php } ?>
</ul>

<?php get_footer(); ?>
