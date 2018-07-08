<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package lookaer
 */

?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<?php do_action( 'lookaer_before_site' ); ?>

<div id="page" class="hfeed site">
	<?php do_action( 'lookaer_before_header' ); ?>

	<header id="masthead" class="site-header" role="banner" style="<?php lookaer_header_styles(); ?>">

		<?php
		/**
		 * Functions hooked into lookaer_header action
		 *
		 * @hooked lookaer_header_container                 - 0
		 * @hooked lookaer_skip_links                       - 5
		 * @hooked lookaer_social_icons                     - 10
		 * @hooked lookaer_site_branding                    - 20
		 * @hooked lookaer_secondary_navigation             - 30
		 * @hooked lookaer_product_search                   - 40
		 * @hooked lookaer_header_container_close           - 41
		 * @hooked lookaer_primary_navigation_wrapper       - 42
		 * @hooked lookaer_primary_navigation               - 50
		 * @hooked lookaer_header_cart                      - 60
		 * @hooked lookaer_primary_navigation_wrapper_close - 68
		 */
		do_action( 'lookaer_header' ); ?>

	</header><!-- #masthead -->

	<?php
	/**
	 * Functions hooked in to lookaer_before_content
	 *
	 * @hooked lookaer_header_widget_region - 10
	 * @hooked woocommerce_breadcrumb - 10
	 */
	do_action( 'lookaer_before_content' ); ?>

	<div id="content" class="site-content" tabindex="-1">
		<div class="col-full">

		<?php
		do_action( 'lookaer_content_top' );
