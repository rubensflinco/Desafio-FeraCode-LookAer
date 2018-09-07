<?php
/**
 * lookaer engine room
 *
 * @package lookaer
 */

/**
 * Assign the lookaer version to a var
 */
$theme              = wp_get_theme( 'lookaer' );
$lookaer_version = $theme['Version'];

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 980; /* pixels */
}

$lookaer = (object) array(
	'version' => $lookaer_version,

	/**
	 * Initialize all the things.
	 */
	'main'       => require 'inc/class-lookaer.php',
	'customizer' => require 'inc/customizer/class-lookaer-customizer.php',
);

require 'inc/lookaer-functions.php';
require 'inc/lookaer-template-hooks.php';
require 'inc/lookaer-template-functions.php';

if ( class_exists( 'Jetpack' ) ) {
	$lookaer->jetpack = require 'inc/jetpack/class-lookaer-jetpack.php';
}

if ( lookaer_is_woocommerce_activated() ) {
	$lookaer->woocommerce = require 'inc/woocommerce/class-lookaer-woocommerce.php';

	require 'inc/woocommerce/lookaer-woocommerce-template-hooks.php';
	require 'inc/woocommerce/lookaer-woocommerce-template-functions.php';
}

if ( is_admin() ) {

	require 'inc/admin/class-lookaer-plugin-install.php';
}

/**
 * NUX
 * Only load if wp version is 4.7.3 or above because of this issue;
 * https://core.trac.wordpress.org/ticket/39610?cversion=1&cnum_hist=2
 */
if ( version_compare( get_bloginfo( 'version' ), '4.7.3', '>=' ) && ( is_admin() || is_customize_preview() ) ) {
	require 'inc/nux/class-lookaer-nux-admin.php';
	require 'inc/nux/class-lookaer-nux-guided-tour.php';

	if ( defined( 'WC_VERSION' ) && version_compare( WC_VERSION, '3.0.0', '>=' ) ) {
		require 'inc/nux/class-lookaer-nux-starter-content.php';
	}
}

/**
 * Note: Do not add any custom code here. Please use a custom plugin so that your customizations aren't lost during updates.
 * https://github.com/woocommerce/theme-customisations
 */
