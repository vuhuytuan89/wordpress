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
		<?php html5blank_nav(); ?>
		<!--
		<span class="assistive-text section-heading">Main menu</span>
		<div class="skip-link screen-reader-text"><a href="#content" title="Skip to content">Skip to content</a></div>
		<div class="menu"><ul id="menu-top-menu" class="menu"><li id="menu-item-62" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-has-children menu-item-62"><a href="/">Tours</a>
<ul class="sub-menu">
	<li id="menu-item-798" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-798"><a href="http://daytourshanoi.com/travel-style/sightseeing/">Sightseeing</a></li>
	<li id="menu-item-799" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-799"><a href="http://daytourshanoi.com/travel-style/active-tours/">Active tours</a></li>
	<li id="menu-item-801" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-801"><a href="http://daytourshanoi.com/travel-style/foodie-tours/">Foodie tours</a></li>
	<li id="menu-item-802" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-802"><a href="http://daytourshanoi.com/travel-style/night-life/">After dark</a></li>
	<li id="menu-item-800" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-800"><a href="http://daytourshanoi.com/travel-style/extended-tours/">Extended tours</a></li>
</ul>
</li>
<li id="menu-item-733" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-733"><a href="http://daytourshanoi.com/guide/">Things to do</a>
<ul class="sub-menu">
	<li id="menu-item-803" class="menu-item menu-item-type-taxonomy menu-item-object-thing-to-do menu-item-803"><a href="http://daytourshanoi.com/thing-to-do/attraction/">Attractions</a></li>
	<li id="menu-item-804" class="menu-item menu-item-type-taxonomy menu-item-object-thing-to-do menu-item-804"><a href="http://daytourshanoi.com/thing-to-do/culture/">Cultures</a></li>
	<li id="menu-item-805" class="menu-item menu-item-type-taxonomy menu-item-object-thing-to-do menu-item-805"><a href="http://daytourshanoi.com/thing-to-do/shopping/">Shopping</a></li>
	<li id="menu-item-806" class="menu-item menu-item-type-taxonomy menu-item-object-thing-to-do menu-item-806"><a href="http://daytourshanoi.com/thing-to-do/eat-n-drink/">Eat and Drink</a></li>
	<li id="menu-item-807" class="menu-item menu-item-type-taxonomy menu-item-object-thing-to-do menu-item-807"><a href="http://daytourshanoi.com/thing-to-do/hanoi-cuisine/">Hanoi Cuisine</a></li>
</ul>
</li>
<li id="menu-item-140" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-140"><a href="http://daytourshanoi.com/before-you-go/">Before you go</a></li>
<li id="menu-item-63" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-63"><a href="http://daytourshanoi.com/about-us/">About us</a>
<ul class="sub-menu">
	<li id="menu-item-132" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-132"><a href="http://daytourshanoi.com/why-us/">Why us</a></li>
	<li id="menu-item-361" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-361"><a href="http://daytourshanoi.com/travel-with-us/">Travel with us</a></li>
	<li id="menu-item-64" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-64"><a title="About us" href="http://daytourshanoi.com/testimonials/">Testimonials</a></li>
</ul>
</li>
<li id="menu-item-65" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-65"><a href="http://daytourshanoi.com/contact-us/">Contact us</a></li>
</ul></div>	
-->
</nav><!-- #access -->
	</header><!-- #branding -->
	
    <div id="content" class="clearfix">
        
        <div id="main" class="clearfix" role="main">
              		
		<h1>Day Tours in Hanoi</h1>
		
		 		 			<div id="grid-wrap" class="clearfix">

	<?php get_template_part('loop'); ?>

			<?php get_template_part('pagination'); ?>




		 		 				
                 <div class="grid-box latest">
					<article id="post-698" class="post-698 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/morning-biking-hanoi/" rel="bookmark" title="Early Morning Ride in Hanoi"><img width="458" height="305" src="http://daytourshanoi.com/wp-content/uploads/Cycling-around-Westlake-Hanoi.jpg" class="attachment-medium wp-post-image" alt="Cycling-around-Westlake-Hanoi" /></a>
	     	<span class='price'><span>from </span>$16</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/morning-biking-hanoi/" title="Go to Early Morning Ride in Hanoi" rel="bookmark">Early Morning Ride in Hanoi</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 3 hours early morning tour. An early-morning ride around Hanoi&#8217;s beautiful lakes: Hoan Kiem and West...
	</div><!-- .entry-content -->
</article><!-- #post-698 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-679" class="post-679 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/visit-tho-ha-traditional-village/" rel="bookmark" title="Visit Tho Ha Traditional Village"><img width="460" height="303" src="http://daytourshanoi.com/wp-content/uploads/tho-ha-village-460x303.jpg" class="attachment-medium wp-post-image" alt="tho ha village" /></a>
	     	<span class='price'><span>from </span>$25</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/visit-tho-ha-traditional-village/" title="Go to Visit Tho Ha Traditional Village" rel="bookmark">Visit Tho Ha Traditional Village</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 6 hours Discover the authentic rural life with visit to Tho Ha traditional village 9.00 Pick up at...
	</div><!-- .entry-content -->
</article><!-- #post-679 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-776" class="post-776 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/cuc-phuong-national-park/" rel="bookmark" title="Cuc Phuong National Park"><img width="460" height="226" src="http://daytourshanoi.com/wp-content/uploads/Langur-In-Cuc-Phuong-National-Park-Vietnam1-460x226.jpg" class="attachment-medium wp-post-image" alt="Langur-In-Cuc-Phuong-National-Park" /></a>
	     	<span class='price'><span>from </span>$32</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/cuc-phuong-national-park/" title="Go to Cuc Phuong National Park" rel="bookmark">Cuc Phuong National Park</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 9 hours. Don&#8217;t miss - Visit the primary rainy forest Cuc Phuong National Park - Visit...
	</div><!-- .entry-content -->
</article><!-- #post-776 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-677" class="post-677 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/perfume-pagoda-tour/" rel="bookmark" title="Perfume Pagoda Tour"><img width="460" height="252" src="http://daytourshanoi.com/wp-content/uploads/perfume-pagoda-460x252.jpg" class="attachment-medium wp-post-image" alt="perfume pagoda" /></a>
	     	<span class='price'><span>from </span>$30</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/perfume-pagoda-tour/" title="Go to Perfume Pagoda Tour" rel="bookmark">Perfume Pagoda Tour</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 7-8 hours A day trip to Perfume pagoda, the important religious Buddhist of Vietnam. 8.30 pick...
	</div><!-- .entry-content -->
</article><!-- #post-677 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-668" class="post-668 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/halong-bay-cruise-1-day/" rel="bookmark" title="Halong Bay Cruise 1 Day"><img width="460" height="327" src="http://daytourshanoi.com/wp-content/uploads/Halong-Bay-floating-village-460x327.jpg" class="attachment-medium wp-post-image" alt="Halong-Bay-floating-village" /></a>
	     	<span class='price'><span>from </span>$45</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/halong-bay-cruise-1-day/" title="Go to Halong Bay Cruise 1 Day" rel="bookmark">Halong Bay Cruise 1 Day</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 11-12 hours (8.00-19.30) Explore legendary Halong Bay on boat Depart from your hotel in Hanoi at...
	</div><!-- .entry-content -->
</article><!-- #post-668 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-650" class="post-650 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/experience-hanoi-night/" rel="bookmark" title="Experience Hanoi After Dark"><img width="300" height="214" src="http://daytourshanoi.com/wp-content/uploads/hanoi_night-300x214.jpg" class="attachment-medium wp-post-image" alt="Hanoi Night" /></a>
	     	<span class='price'><span>from </span>$30</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/experience-hanoi-night/" title="Go to Experience Hanoi After Dark" rel="bookmark">Experience Hanoi After Dark</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 4 hours evening. Discover Exciting Nightlife in Hanoi in this 4 hours tour in Hanoi Let’s...
	</div><!-- .entry-content -->
</article><!-- #post-650 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-810" class="post-810 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/challenge-your-cooking-skill/" rel="bookmark" title="Home Cooking Class"><img width="448" height="252" src="http://daytourshanoi.com/wp-content/uploads/awesome-cooking.jpg" class="attachment-medium wp-post-image" alt="awesome cooking hanoi" /></a>
	     	<span class='price'><span>from </span>$35</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/challenge-your-cooking-skill/" title="Go to Home Cooking Class" rel="bookmark">Home Cooking Class</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 4 hours, lunch or dinner time. To be like a local, challenge your cooking skill at...
	</div><!-- .entry-content -->
</article><!-- #post-810 -->                    			</div>
                    					                									<div class="grid-box latest">
					<article id="post-777" class="post-777 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/van-long-natural-reserve/" rel="bookmark" title="Van Long Natural Reserve in Ninh Binh"><img width="460" height="305" src="http://daytourshanoi.com/wp-content/uploads/Van-Long-Natural-Reserve3-460x305.jpg" class="attachment-medium wp-post-image" alt="Van-Long-Natural-Reserve" /></a>
	     	<span class='price'><span>from </span>$32</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/van-long-natural-reserve/" title="Go to Van Long Natural Reserve in Ninh Binh" rel="bookmark">Van Long Natural Reserve in Ninh Binh</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 8 hours. Escape from bustling Hanoi to the peaceful Van Long natural reserve in Ninh Binh,...
	</div><!-- .entry-content -->
</article><!-- #post-777 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-658" class="post-658 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/hanoi-city-tour/" rel="bookmark" title="Hanoi City Tour Sightseeing"><img width="460" height="294" src="http://daytourshanoi.com/wp-content/uploads/hanoi-city-tour-08-460x294.jpg" class="attachment-medium wp-post-image" alt="hanoi city tour" /></a>
	     	<span class='price'><span>from </span>$29</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/hanoi-city-tour/" title="Go to Hanoi City Tour Sightseeing" rel="bookmark">Hanoi City Tour Sightseeing</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 6-7 hours. Sightseeing tour Hanoi city 1 day, see unique of Hanoi In this Hanoi city...
	</div><!-- .entry-content -->
</article><!-- #post-658 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-673" class="post-673 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/hoa-lu-tam-coc-day-tour/" rel="bookmark" title="Hoa Lu &#8211; Tam Coc Day Tour"><img width="460" height="297" src="http://daytourshanoi.com/wp-content/uploads/tam-coc-boat-trip-460x297.jpg" class="attachment-medium wp-post-image" alt="tam coc boat trip" /></a>
	     	<span class='price'><span>from </span>$36</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/hoa-lu-tam-coc-day-tour/" title="Go to Hoa Lu &#8211; Tam Coc Day Tour" rel="bookmark">Hoa Lu &#8211; Tam Coc Day Tour</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 9 hours &#8211; 8.00 &#8211; 17.00. Visit Hoa Lu ancient capital and take sampan trip to Tam Coc....
	</div><!-- .entry-content -->
</article><!-- #post-673 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-687" class="post-687 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/cycling-to-countryside-hanoi/" rel="bookmark" title="Cycling to Countryside of Hanoi"><img width="460" height="306" src="http://daytourshanoi.com/wp-content/uploads/hanoi-cycling-1-460x306.jpg" class="attachment-medium wp-post-image" alt="cycling hanoi" /></a>
	     	<span class='price'><span>from </span>$28</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/cycling-to-countryside-hanoi/" title="Go to Cycling to Countryside of Hanoi" rel="bookmark">Cycling to Countryside of Hanoi</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: full day cycling (7 hours &#8211; 30km total). Cycling to Countryside of Hanoi, visit local family...
	</div><!-- .entry-content -->
</article><!-- #post-687 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-682" class="post-682 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/waking-up-with-hanoians/" rel="bookmark" title="Waking up with Hanoians"><img width="460" height="301" src="http://daytourshanoi.com/wp-content/uploads/waking-hanoi-up1-460x301.jpg" class="attachment-medium wp-post-image" alt="Tai Chi exercise Hanoi" /></a>
	     	<span class='price'><span>from </span>$15</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/waking-up-with-hanoians/" title="Go to Waking up with Hanoians" rel="bookmark">Waking up with Hanoians</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 3 hours early morning. Get up early and discover the other side of Hanoi and Hanoians,...
	</div><!-- .entry-content -->
</article><!-- #post-682 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-684" class="post-684 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/duong-lam-ancient-village-exploring/" rel="bookmark" title="Duong Lam Ancient Village Exploring"><img width="460" height="316" src="http://daytourshanoi.com/wp-content/uploads/duong-lam-ancient-village-2-460x316.jpg" class="attachment-medium wp-post-image" alt="duong-lam-ancient-village" /></a>
	     	<span class='price'><span>from </span>$32</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/duong-lam-ancient-village-exploring/" title="Go to Duong Lam Ancient Village Exploring" rel="bookmark">Duong Lam Ancient Village Exploring</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 6 hours Visit to an authentic rural village to experience rural life of Hanoi - Visiting ancient...
	</div><!-- .entry-content -->
</article><!-- #post-684 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-647" class="post-647 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/cooking-class-in-hanoi/" rel="bookmark" title="Cooking Experience in Hanoi"><img width="460" height="345" src="http://daytourshanoi.com/wp-content/uploads/cooking-class-hanoi-2-460x345.jpg" class="attachment-medium wp-post-image" alt="cooking class in hanoi" /></a>
	     	<span class='price'><span>from </span>$35</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/cooking-class-in-hanoi/" title="Go to Cooking Experience in Hanoi" rel="bookmark">Cooking Experience in Hanoi</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 4 hours, lunch or dinner time. Learn to cook Hanoi cuisine, enjoy what-you-have-made Join our cooking...
	</div><!-- .entry-content -->
</article><!-- #post-647 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-150" class="post-150 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/seeing-hanoi-on-motorbike/" rel="bookmark" title="Seeing Hanoi on Motorbike"><img width="460" height="344" src="http://daytourshanoi.com/wp-content/uploads/hanoi-half-day-tour-on-460x344.jpg" class="attachment-medium wp-post-image" alt="seeing hanoi on motorbike" /></a>
	     	<span class='price'><span>from </span>$35</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/seeing-hanoi-on-motorbike/" title="Go to Seeing Hanoi on Motorbike" rel="bookmark">Seeing Hanoi on Motorbike</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 4 hours Explore Hanoi in a unique and fascinating way and experience the Hanoians’ daily life...
	</div><!-- .entry-content -->
</article><!-- #post-150 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-691" class="post-691 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/red-river-tour-to-countryside-hanoi/" rel="bookmark" title="Red River Boat Trip to Countryside of Hanoi"><img width="460" height="266" src="http://daytourshanoi.com/wp-content/uploads/red-river-boat2-460x266.jpg" class="attachment-medium wp-post-image" alt="red river boat tour" /></a>
	     	<span class='price'><span>from </span>$35</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/red-river-tour-to-countryside-hanoi/" title="Go to Red River Boat Trip to Countryside of Hanoi" rel="bookmark">Red River Boat Trip to Countryside of Hanoi</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: Full day tour (9 hours). The Red River tour will bring fresh and interesting sensations for...
	</div><!-- .entry-content -->
</article><!-- #post-691 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-654" class="post-654 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/hanoi-street-food-taste/" rel="bookmark" title="Hanoi Street Food Taste"><img width="460" height="258" src="http://daytourshanoi.com/wp-content/uploads/street-food-taste-hanoi-460x258.jpg" class="attachment-medium wp-post-image" alt="street food taste hanoi" /></a>
	     	<span class='price'><span>from </span>$23</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/hanoi-street-food-taste/" title="Go to Hanoi Street Food Taste" rel="bookmark">Hanoi Street Food Taste</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 3 hours, luncheon or dinner. Taste Hanoi street food &amp; learn about Hanoi lifestyle Join our...
	</div><!-- .entry-content -->
</article><!-- #post-654 -->                    			</div>
                    					                									<div class="grid-box ">
					<article id="post-664" class="post-664 tour type-tour has-post-thumbnail" 
	>
	
         	<div class="grid-box-img">
     		<a href="http://daytourshanoi.com/tour/visit-bat-trang-and-le-mat-traditional-village/" rel="bookmark" title="Visit Bat Trang &amp; Le Mat Traditional Village"><img width="300" height="199" src="http://daytourshanoi.com/wp-content/uploads/bat-trang-ceramic-village-300x199.jpg" class="attachment-medium wp-post-image" alt="bat-trang-ceramic-village" /></a>
	     	<span class='price'><span>from </span>$26</span>     	</div>
		
        
    	<header class="entry-header">
		<h2 class="entry-title"><a href="http://daytourshanoi.com/tour/visit-bat-trang-and-le-mat-traditional-village/" title="Go to Visit Bat Trang &amp; Le Mat Traditional Village" rel="bookmark">Visit Bat Trang &#038; Le Mat Traditional Village</a></h2>

	</header><!-- .entry-header -->

	<div class="entry-content post_content">
		Duration: 6-7 hours Visit Bat Trang Ceramic village, learn about making ceramic by hand The suburb Hanoi tour...
	</div><!-- .entry-content -->
</article><!-- #post-664 -->                    			</div>
                    					        		</div>
							
				
        </div> <!-- end #main -->

        		<div id="sidebar-home" class="widget-area" role="complementary">

			<aside id="text-2" class="widget widget_text"><div class="widget-title">Why us</div>			<div class="textwidget"><ul><li>We are local experts</li>
<li>Always on support</li>
<li>Value your experience </li>
<li>Best price guaranteed </li>
<li>Responsible travel </li>
</ul></div>
		</aside><aside id="nav_menu-3" class="widget widget_nav_menu"><div class="widget-title">Travel with us</div><div class="menu-about-us-container"><ul id="menu-about-us" class="menu"><li id="menu-item-119" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-119"><a href="http://daytourshanoi.com/about-us/">About us</a></li>
<li id="menu-item-120" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-120"><a href="http://daytourshanoi.com/testimonials/">Testimonials</a></li>
<li id="menu-item-124" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-124"><a href="http://daytourshanoi.com/travel-with-us/">Travel with us</a></li>
<li id="menu-item-125" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-125"><a href="http://daytourshanoi.com/contact-us/">Contact us</a></li>
</ul></div></aside><aside id="nav_menu-7" class="widget widget_nav_menu"><div class="widget-title">Theme Tours</div><div class="menu-theme-tours-container"><ul id="menu-theme-tours" class="menu"><li id="menu-item-734" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-734"><a href="http://daytourshanoi.com/travel-style/sightseeing/">Sightseeing</a></li>
<li id="menu-item-725" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-725"><a href="http://daytourshanoi.com/travel-style/active-tours/">Active tours</a></li>
<li id="menu-item-727" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-727"><a href="http://daytourshanoi.com/travel-style/foodie-tours/">Foodie tours</a></li>
<li id="menu-item-726" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-726"><a href="http://daytourshanoi.com/travel-style/night-life/">After dark</a></li>
<li id="menu-item-765" class="menu-item menu-item-type-taxonomy menu-item-object-travel-style menu-item-765"><a href="http://daytourshanoi.com/travel-style/extended-tours/">Extended tours</a></li>
</ul></div></aside><aside id="tag_cloud-2" class="widget widget_tag_cloud"><div class="widget-title">Things to do</div><div class="tagcloud"><a href='http://daytourshanoi.com/thing-to-do/attraction/' class='tag-link-19' title='14 topics' style='font-size: 22pt;'>Attractions</a>
<a href='http://daytourshanoi.com/thing-to-do/culture/' class='tag-link-23' title='5 topics' style='font-size: 14pt;'>Cultures</a>
<a href='http://daytourshanoi.com/thing-to-do/eat-n-drink/' class='tag-link-20' title='3 topics' style='font-size: 10.4pt;'>Eat and Drink</a>
<a href='http://daytourshanoi.com/thing-to-do/hanoi-cuisine/' class='tag-link-22' title='2 topics' style='font-size: 8pt;'>Hanoi Cuisine</a>
<a href='http://daytourshanoi.com/thing-to-do/shopping/' class='tag-link-21' title='4 topics' style='font-size: 12.4pt;'>Shopping</a></div>
</aside>		</div><!-- #sidebar .widget-area -->

    </div> <!-- end #content -->
	<main role="main">
		<!-- section -->
		<section>

			<h1><?php _e( 'Latest Posts', 'html5blank' ); ?></h1>

		

		</section>
		<!-- /section -->
	</main>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
