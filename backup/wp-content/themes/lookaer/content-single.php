<?php
/**
 * Template used to display post content on single pages.
 *
 * @package lookaer
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<?php
	do_action( 'lookaer_single_post_top' );

	/**
	 * Functions hooked into lookaer_single_post add_action
	 *
	 * @hooked lookaer_post_header          - 10
	 * @hooked lookaer_post_meta            - 20
	 * @hooked lookaer_post_content         - 30
	 */
	do_action( 'lookaer_single_post' );

	/**
	 * Functions hooked in to lookaer_single_post_bottom action
	 *
	 * @hooked lookaer_post_nav         - 10
	 * @hooked lookaer_display_comments - 20
	 */
	do_action( 'lookaer_single_post_bottom' );
	?>

</article><!-- #post-## -->
