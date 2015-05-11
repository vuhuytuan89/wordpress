<?php get_header(); ?>

<div id="container">
	<div id="search-box-wrap">
        <div id="search-box">
           <div id="close-x">x</div>
           <form role="search" method="get" id="searchform" class="searchform" action="<?php echo home_url(); ?>">
				<div>
					<label class="screen-reader-text" for="s">Search for:</label>
					<input type="text" value="" name="s" id="s" />
					<input type="submit" id="searchsubmit" value="Search" />
				</div>
			</form>        </div>
    </div>
	<header id="branding" role="banner">
      <div id="inner-header" class="clearfix">
		<div id="site-heading">
        	            <div id="site-logo">
        	            		<a href="<?php echo home_url(); ?>">
							<!-- svg logo - toddmotto.com/mastering-svg-use-for-a-retina-web-fallbacks-with-png-script -->
							<img src="<?php echo get_template_directory_uri(); ?>/img/logo.svg" alt="Logo" class="logo-img">
						</a></div>
            		</div>
        <div id="social-media" class="clearfix">
            <a href="tel:+841232000895" class="phone"></a>
                                                                                                                                                                        <a href="mailto:igo@daytourshanoi.com" class="social-em" title="mailto:igo@daytourshanoi.com">Email</a>
                        <div id="search-icon"></div>
         </div>
      </div>
	<nav id="access" role="navigation">
		<span class="assistive-text section-heading">Main menu</span>
		<div class="menu">
			<?php html5blank_nav(); ?>
		</div>
		
	</nav><!-- #access -->
</header><!-- #branding -->
	
    <div id="content" class="clearfix">
        
        <div id="main" class="clearfix" role="main">
              		
		<h1>Day Tours in Hanoi</h1>
		
		 	<div id="grid-wrap" class="clearfix">

			<?php get_template_part('loop'); ?>

			<?php get_template_part('pagination'); ?>

			</div>
							
				
        </div> <!-- end #main -->

        		<div id="sidebar-home" class="widget-area" role="complementary">

			<aside id="text-2" class="widget widget_text"><div class="widget-title">Why us</div>			<div class="textwidget"><ul><li>We are local experts</li>
<li>Always on support</li>
<li>Value your experience </li>
<li>Best price guaranteed </li>
<li>Responsible travel </li>
</ul></div>
		</aside>
		<aside id="nav_menu-3" class="widget widget_nav_menu"><div class="widget-title">Travel with us</div><div class="menu-about-us-container"><ul id="menu-about-us" class="menu"><li id="menu-item-119" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-119"><a href="http://daytourshanoi.com/about-us/">About us</a></li>
<li id="menu-item-120" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-120"><a href="http://daytourshanoi.com/testimonials/">Testimonials</a></li>
<li id="menu-item-124" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-124"><a href="http://daytourshanoi.com/travel-with-us/">Travel with us</a></li>
<li id="menu-item-125" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-125"><a href="http://daytourshanoi.com/contact-us/">Contact us</a></li>
</ul></div></aside>

<aside id="nav_menu-7" class="widget widget_nav_menu"><div class="widget-title">Theme Tours</div><div class="menu-theme-tours-container"><ul id="menu-theme-tours" class="menu"><li id="menu-item-734" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-734"><a href="http://daytourshanoi.com/travel-style/sightseeing/">Sightseeing</a></li>
<li id="menu-item-725" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-725"><a href="http://daytourshanoi.com/travel-style/active-tours/">Active tours</a></li>
<li id="menu-item-727" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-727"><a href="http://daytourshanoi.com/travel-style/foodie-tours/">Foodie tours</a></li>
<li id="menu-item-726" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-726"><a href="http://daytourshanoi.com/travel-style/night-life/">After dark</a></li>
<li id="menu-item-765" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-765"><a href="http://daytourshanoi.com/travel-style/extended-tours/">Extended tours</a></li>
</ul></div></aside>

<aside id="tag_cloud-2" class="widget widget_tag_cloud"><div class="widget-title">Things to do</div><div class="tagcloud"><a href='http://daytourshanoi.com/thing-to-do/attraction/' class='tag-link-19' title='14 topics' style='font-size: 22pt;'>Attractions</a>
<a href='http://daytourshanoi.com/thing-to-do/culture/' class='tag-link-23' title='5 topics' style='font-size: 14pt;'>Cultures</a>
<a href='http://daytourshanoi.com/thing-to-do/eat-n-drink/' class='tag-link-20' title='3 topics' style='font-size: 10.4pt;'>Eat and Drink</a>
<a href='http://daytourshanoi.com/thing-to-do/hanoi-cuisine/' class='tag-link-22' title='2 topics' style='font-size: 8pt;'>Hanoi Cuisine</a>
<a href='http://daytourshanoi.com/thing-to-do/shopping/' class='tag-link-21' title='4 topics' style='font-size: 12.4pt;'>Shopping</a></div>
</aside>		
</div><!-- #sidebar .widget-area -->

    </div> <!-- end #content -->
	<main role="main">
		<!-- section -->
		<section>

			<h1><?php _e( 'Latest Posts', 'html5blank' ); ?></h1>

		

		</section>
		<!-- /section -->
	</main>

<?php //get_sidebar(); ?>

<?php get_footer(); ?>
