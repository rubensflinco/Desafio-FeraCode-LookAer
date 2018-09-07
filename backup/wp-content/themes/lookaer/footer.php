<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package lookaer
 */

?>

		</div><!-- .col-full -->
	</div><!-- #content -->

	<?php do_action( 'lookaer_before_footer' ); ?>

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="col-full">

			<?php
			/**
			 * Functions hooked in to lookaer_footer action
			 *
			 * @hooked lookaer_footer_widgets - 10
			 * @hooked lookaer_credit         - 20
			 */
			do_action( 'lookaer_footer' ); ?>

		</div><!-- .col-full -->
	</footer><!-- #colophon -->

	<?php do_action( 'lookaer_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
