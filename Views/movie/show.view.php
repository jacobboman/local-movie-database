<?php get_header($page_title); ?>

<h1><?php echo $movie->name; ?></h1>


<h4>Director:</h4>
<?php 

foreach ($directors as $director) { ?>
  <li><a href="/local-movie-database/professionals/?id=<?php echo $director->pro_id;?> "> <?php echo $director->name; ?></a></li>
<?php } ?>

<h4>Actors:</h4>
<?php
  foreach ($actors as $actor) { 
?>
  <li><a href="/local-movie-database/professionals/?id=<?php echo $actor->pro_id;?> "> <?php echo $actor->name; ?></a></li>
<?php
  }
?>

<?php get_footer(); ?>
