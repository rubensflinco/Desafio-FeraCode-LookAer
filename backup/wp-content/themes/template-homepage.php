<?php
/**
 * The template for displaying the homepage.
 *
 * This page template will display any functions hooked into the `homepage` action.
 * By default this includes a variety of product displays and the page content itself. To change the order or toggle these components
 * use the Homepage Control plugin.
 * https://wordpress.org/plugins/homepage-control/
 *
 * Template name: Homepage
 *
 * @package lookaer
 */

get_header(); 


			/**
			 * Functions hooked in to homepage action
			 *
			 * @hooked lookaer_homepage_content      - 10
			 * @hooked lookaer_product_categories    - 20
			 * @hooked lookaer_recent_products       - 30
			 * @hooked lookaer_featured_products     - 40
			 * @hooked lookaer_popular_products      - 50
			 * @hooked lookaer_on_sale_products      - 60
			 * @hooked lookaer_best_selling_products - 70
			 */
			do_action( 'homepage' ); 


get_footer();
