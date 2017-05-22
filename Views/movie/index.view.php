<?php get_header($page_title); ?>

<h1>Movies</h1>

<ul>
	<?php foreach ($movies as $movie) { ?>
		<li><a href="/local-movie-database/movies/?id=<?php echo $movie->id; ?>"><?php echo $movie->name; ?></a></li>
	<?php } ?>
</ul>

<?php get_footer(); ?>
