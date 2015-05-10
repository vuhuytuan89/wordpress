<?php
			  $temp = $wp_query;
			  $wp_query = null;
			  $wp_query = new WP_Query();
			  $wp_query->query('showposts=6&post_type=list-tour'.'&paged='.$paged);
			  $count = 0;

			  while ($wp_query->have_posts()) : $wp_query->the_post(); $count++;
			?>

			   <div class="grid-box latest">
					<article id="post-698" class="post-698 tour type-tour has-post-thumbnail" >
	
         	<div class="grid-box-img">
     		<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">	<?php the_post_thumbnail(); ?></a>
	     	<span class='price'><span>from </span>$16</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">	</h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 3 hours early morning tour. An early-morning ride around Hanoi&#8217;s beautiful lakes: Hoan Kiem and West...
	</div><!-- .entry-content -->
</article><!-- #post-698 -->                    			</div>
<?php endwhile; ?>