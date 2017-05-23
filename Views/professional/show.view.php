<?php get_header($page_title); ?>

<h1><?php echo $professional->name; ?></h1>
<p><?php echo $professional->birth_year; ?></p>
<p>
  <?php 
    if ($professional->gender == 0) {
      echo "Male";
    } else {
      echo "Female";
    }
  ?>
</p>

<h4>Directing</h4>  
<?php 

  // var_dump($movies); 

?>
<?php
foreach ($director_in as $movie) { ?>
  <ul>
    <li>
      <a href="/local-movie-database/movies/?id=<?php echo $movie->movie_id; ?>">
        <?php echo $movie->name; ?>
      </a>
    </li>
  </ul>
<?php 
} ?>


<?php 

if ($actor_in = 1) {
  echo "string";
}

 ?>

<h4>Starring in</h4>

<?php
foreach ($actor_in as $movie) { ?>
  <ul>
    <li>
      <a href="/local-movie-database/movies/?id=<?php echo $movie->movie_id; ?>">
        <?php echo $movie->name; ?>
      </a>
    </li>
  </ul>
<?php 
} ?>

<?php get_footer(); ?>
