<?php
/**
 * lookaer WooCommerce hooks
 *
 * @package lookaer
 */

/**
 * Styles
 *
 * @see  lookaer_woocommerce_scripts()
 */

/**
 * Layout
 *
 * @see  lookaer_before_content()
 * @see  lookaer_after_content()
 * @see  woocommerce_breadcrumb()
 * @see  lookaer_shop_messages()
 */
remove_action( 'woocommerce_before_main_content', 'woocommerce_breadcrumb',                   20 );
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper',       10 );
remove_action( 'woocommerce_after_main_content',  'woocommerce_output_content_wrapper_end',   10 );
remove_action( 'woocommerce_sidebar',             'woocommerce_get_sidebar',                  10 );
remove_action( 'woocommerce_after_shop_loop',     'woocommerce_pagination',                   10 );
remove_action( 'woocommerce_before_shop_loop',    'woocommerce_result_count',                 20 );
remove_action( 'woocommerce_before_shop_loop',    'woocommerce_catalog_ordering',             30 );
add_action( 'woocommerce_before_main_content',    'lookaer_before_content',                10 );
add_action( 'woocommerce_after_main_content',     'lookaer_after_content',                 10 );
add_action( 'lookaer_content_top',             'lookaer_shop_messages',                 15 );
add_action( 'lookaer_before_content',          'woocommerce_breadcrumb',                   10 );

add_action( 'woocommerce_after_shop_loop',        'lookaer_sorting_wrapper',               9 );
add_action( 'woocommerce_after_shop_loop',        'woocommerce_catalog_ordering',             10 );
add_action( 'woocommerce_after_shop_loop',        'woocommerce_result_count',                 20 );
add_action( 'woocommerce_after_shop_loop',        'woocommerce_pagination',                   30 );
add_action( 'woocommerce_after_shop_loop',        'lookaer_sorting_wrapper_close',         31 );

add_action( 'woocommerce_before_shop_loop',       'lookaer_sorting_wrapper',               9 );
add_action( 'woocommerce_before_shop_loop',       'woocommerce_catalog_ordering',             10 );
add_action( 'woocommerce_before_shop_loop',       'woocommerce_result_count',                 20 );
add_action( 'woocommerce_before_shop_loop',       'lookaer_woocommerce_pagination',        30 );
add_action( 'woocommerce_before_shop_loop',       'lookaer_sorting_wrapper_close',         31 );

add_action( 'lookaer_footer',                  'lookaer_handheld_footer_bar',           999 );

// Legacy WooCommerce columns filter.
if ( defined( 'WC_VERSION' ) && version_compare( WC_VERSION, '3.3', '<' ) ) {
	add_filter( 'loop_shop_columns', 'lookaer_loop_columns' );
	add_action( 'woocommerce_before_shop_loop', 'lookaer_product_columns_wrapper', 40 );
	add_action( 'woocommerce_after_shop_loop', 'lookaer_product_columns_wrapper_close', 40 );
}

/**
 * Products
 *
 * @see lookaer_upsell_display()
 */
remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_upsell_display',               15 );
add_action( 'woocommerce_after_single_product_summary',    'lookaer_upsell_display',                15 );

remove_action( 'woocommerce_before_shop_loop_item_title',  'woocommerce_show_product_loop_sale_flash', 10 );
add_action( 'woocommerce_after_shop_loop_item_title',      'woocommerce_show_product_loop_sale_flash', 6 );

add_action( 'woocommerce_after_single_product_summary',    'lookaer_single_product_pagination',     30 );
add_action( 'lookaer_after_footer',                     'lookaer_sticky_single_add_to_cart',     999 );

/**
 * Header
 *
 * @see lookaer_product_search()
 * @see lookaer_header_cart()
 */
add_action( 'lookaer_header', 'lookaer_product_search', 40 );
add_action( 'lookaer_header', 'lookaer_header_cart',    60 );

/**
 * Cart fragment
 *
 * @see lookaer_cart_link_fragment()
 */
if ( defined( 'WC_VERSION' ) && version_compare( WC_VERSION, '2.3', '>=' ) ) {
	add_filter( 'woocommerce_add_to_cart_fragments', 'lookaer_cart_link_fragment' );
} else {
	add_filter( 'add_to_cart_fragments', 'lookaer_cart_link_fragment' );
}

/**
 * Integrations
 *
 * @see lookaer_woocommerce_brands_archive()
 * @see lookaer_woocommerce_brands_single()
 * @see lookaer_woocommerce_brands_homepage_section()
 */
if ( class_exists( 'WC_Brands' ) ) {
	add_action( 'woocommerce_archive_description', 'lookaer_woocommerce_brands_archive', 5 );
	add_action( 'woocommerce_single_product_summary', 'lookaer_woocommerce_brands_single', 4 );
	add_action( 'homepage', 'lookaer_woocommerce_brands_homepage_section', 80 );
}
