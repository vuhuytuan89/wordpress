<?php
/*
Template Name: Tour
*/
get_header();
?>
<div id="grid-wrap" class="clearfix">
<?php
		$temp = $wp_query;
			$wp_query = null;
			$wp_query = new WP_Query();
			$wp_query->query('showposts=6&post_type=list-tour'.'&paged='.$paged);
			$count = 0;
			while ($wp_query->have_posts()) : $wp_query->the_post(); $count++;
?>
<div class="grid-box  <?php if($count==1 || $count==8) echo "latest"; ?>">
	<article id="post-698" class="post-698 tour type-tour has-post-thumbnail" >		
		<div class="grid-box-img">
			<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">	<?php the_post_thumbnail(); ?></a>
			<?php 
				$price = get_post_meta( $post->ID, 'wpcf-price-from', true );
				if($price){?>
				<span class='price'><span>from </span><?php echo $price; ?></span>
			<?php } ?>
		</div>		
		<header class="entry-header">
			<h2 class="entry-title"><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">	<?php the_title(); ?></a></h2>
		</header><!-- .entry-header -->
		<div class="entry-content post_content">
			<?php 
				echo get_post_meta( $post->ID, 'wpcf-tom-tat', true );
			?>
		</div><!-- .entry-content -->
	</article><!-- #post-698 -->
</div>

<?php endwhile;  ?>
</div>
<?php get_footer(); ?>