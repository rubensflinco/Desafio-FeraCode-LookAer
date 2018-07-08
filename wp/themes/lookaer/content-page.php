<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package lookaer
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php
	/**
	 * Functions hooked in to lookaer_page add_action
	 *
	 * @hooked lookaer_page_header          - 10
	 * @hooked lookaer_page_content         - 20
	 */
	do_action( 'lookaer_page' );
	?>
</article><!-- #post-## -->
