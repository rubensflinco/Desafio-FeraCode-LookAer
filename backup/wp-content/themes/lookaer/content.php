<?php
/**
 * Template used to display post content.
 *
 * @package lookaer
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<?php
	/**
	 * Functions hooked in to lookaer_loop_post action.
	 *
	 * @hooked lookaer_post_header          - 10
	 * @hooked lookaer_post_meta            - 20
	 * @hooked lookaer_post_content         - 30
	 */
	do_action( 'lookaer_loop_post' );
	?>

</article><!-- #post-## -->
