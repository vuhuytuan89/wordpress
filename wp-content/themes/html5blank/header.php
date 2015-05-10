<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>

		<link href="//www.google-analytics.com" rel="dns-prefetch">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">
<!--
		<link rel='stylesheet' id='yarppWidgetCss-css'  href='<?php echo get_template_directory_uri(); ?>/css/widget.css?ver=4.1.4' type='text/css' media='all' />
		<link rel='stylesheet' id='surfarama_style-css'  href='<?php echo get_template_directory_uri(); ?>/style.css?ver=4.1.4' type='text/css' media='all' />
	-->
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/modernizr-2.6.2.min.js?ver=2.6.2'></script>
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.js?ver=1.11.1'></script>
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery-migrate.min.js?ver=1.2.1'></script>
		
		
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/masonry.min.js?ver=3.1.2'></script>
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/imagesloaded.pkgd.min.js?ver=4.1.4'></script>
		<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/scripts2.js?ver=1.0.0'></script>
	
		<?php wp_head(); ?>
		<script>
        // conditionizr.com
        // configure environment tests
        conditionizr.config({
            assets: '<?php echo get_template_directory_uri(); ?>',
            tests: {}
        });
        </script>

	</head>
	<body <?php body_class(); ?> class="home blog custom-background single-author">

		<!-- wrapper -->
		<div class="wrapper">


		


