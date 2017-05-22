<?php get_header($page_title); ?>

<h1><?php echo $movie->name; ?></h1>

<img src="<?php echo $movie->coverPhoto; ?>">
<p>Released: <?php echo $movie->releaseDate; ?></p>
<p>Recorded in: <?php echo $country->name; ?></p>
<p><a href="/local-movie-database/movies/">Back</a></p>

<?php get_footer(); ?>
