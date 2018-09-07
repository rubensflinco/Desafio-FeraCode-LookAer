<?php
/**
 * lookaer hooks
 *
 * @package lookaer
 */

/**
 * General
 *
 * @see  lookaer_header_widget_region()
 * @see  lookaer_get_sidebar()
 */
add_action( 'lookaer_before_content', 'lookaer_header_widget_region', 10 );
add_action( 'lookaer_sidebar',        'lookaer_get_sidebar',          10 );

/**
 * Header
 *
 * @see  lookaer_skip_links()
 * @see  lookaer_secondary_navigation()
 * @see  lookaer_site_branding()
 * @see  lookaer_primary_navigation()
 */
add_action( 'lookaer_header', 'lookaer_header_container',                 0 );
add_action( 'lookaer_header', 'lookaer_skip_links',                       5 );
add_action( 'lookaer_header', 'lookaer_site_branding',                    20 );
add_action( 'lookaer_header', 'lookaer_secondary_navigation',             30 );
add_action( 'lookaer_header', 'lookaer_header_container_close',           41 );
add_action( 'lookaer_header', 'lookaer_primary_navigation_wrapper',       42 );
add_action( 'lookaer_header', 'lookaer_primary_navigation',               50 );
add_action( 'lookaer_header', 'lookaer_primary_navigation_wrapper_close', 68 );

/**
 * Footer
 *
 * @see  lookaer_footer_widgets()
 * @see  lookaer_credit()
 */
add_action( 'lookaer_footer', 'lookaer_footer_widgets', 10 );
add_action( 'lookaer_footer', 'lookaer_credit',         20 );

/**
 * Homepage
 *
 * @see  lookaer_homepage_content()
 * @see  lookaer_product_categories()
 * @see  lookaer_recent_products()
 * @see  lookaer_featured_products()
 * @see  lookaer_popular_products()
 * @see  lookaer_on_sale_products()
 * @see  lookaer_best_selling_products()
 */
add_action( 'homepage', 'lookaer_homepage_content',      10 );
add_action( 'homepage', 'lookaer_popular_products',      50 );

/**
 * Posts
 *
 * @see  lookaer_post_header()
 * @see  lookaer_post_meta()
 * @see  lookaer_post_content()
 * @see  lookaer_paging_nav()
 * @see  lookaer_single_post_header()
 * @see  lookaer_post_nav()
 * @see  lookaer_display_comments()
 */
add_action( 'lookaer_loop_post',           'lookaer_post_header',          10 );
add_action( 'lookaer_loop_post',           'lookaer_post_meta',            20 );
add_action( 'lookaer_loop_post',           'lookaer_post_content',         30 );
add_action( 'lookaer_loop_after',          'lookaer_paging_nav',           10 );
add_action( 'lookaer_single_post',         'lookaer_post_header',          10 );
add_action( 'lookaer_single_post',         'lookaer_post_meta',            20 );
add_action( 'lookaer_single_post',         'lookaer_post_content',         30 );
add_action( 'lookaer_single_post_bottom',  'lookaer_post_nav',             10 );
add_action( 'lookaer_single_post_bottom',  'lookaer_display_comments',     20 );
add_action( 'lookaer_post_content_before', 'lookaer_post_thumbnail',       10 );

/**
 * Pages
 *
 * @see  lookaer_page_header()
 * @see  lookaer_page_content()
 * @see  lookaer_display_comments()
 */
add_action( 'lookaer_page',       'lookaer_page_header',          10 );
add_action( 'lookaer_page',       'lookaer_page_content',         20 );
add_action( 'lookaer_page_after', 'lookaer_display_comments',     10 );

add_action( 'lookaer_homepage',       'lookaer_homepage_header',      10 );
add_action( 'lookaer_homepage',       'lookaer_page_content',         20 );
