<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<!--[if lt IE 9]>
	<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/html5.js"></script>
	<![endif]-->
	<!--
	<link rel='stylesheet' id='yarppWidgetCss-css'  href='css/widget.css?ver=4.1.4' type='text/css' media='all' />
	<link rel='stylesheet' id='surfarama_style-css'  href='css/style.css?ver=4.1.4' type='text/css' media='all' />
	-->
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/modernizr-2.6.2.min.js?ver=2.6.2'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.js?ver=1.11.1'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery-migrate.min.js?ver=1.2.1'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/masonry.min.js?ver=3.1.2'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/imagesloaded.pkgd.min.js?ver=4.1.4'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/scripts.js?ver=1.0.0'></script>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'twentyfifteen' ); ?></a>
<!--
	<div id="sidebar" class="sidebar">
		<header id="masthead" class="site-header" role="banner">
			<div class="site-branding">
				<?php
					if ( is_front_page() && is_home() ) : ?>
						<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<?php else : ?>
						<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
					<?php endif;

					$description = get_bloginfo( 'description', 'display' );
					if ( $description || is_customize_preview() ) : ?>
						<p class="site-description"><?php echo $description; ?></p>
					<?php endif;
				?>
				<button class="secondary-toggle"><?php _e( 'Menu and widgets', 'twentyfifteen' ); ?></button>
			</div>
		</header>

		<?php get_sidebar(); ?>
	</div>
-->
	<div id="content" class="site-content">
