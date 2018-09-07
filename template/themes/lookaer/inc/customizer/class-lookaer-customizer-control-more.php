<?php
/**
 * Class to create a Customizer control for displaying information
 *
 * @author   WooThemes
 * @package  lookaer
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * The 'more' lookaer control class
 */
class More_lookaer_Control extends WP_Customize_Control {

	/**
	 * Render the content on the theme customizer page
	 */
	public function render_content() {
		?>
		<label style="overflow: hidden; zoom: 1;">

			<span class="customize-control-title"><?php echo esc_html( $this->label ); ?></span>

			<p>
				<?php printf( esc_html__( 'There\'s a range of %s extensions available to put additional power in your hands. Check out the %s%s%s page in your dashboard for more information.', 'lookaer' ), 'lookaer', '<a href="' . esc_url( admin_url() . 'themes.php?page=lookaer-welcome' ) .'">', 'lookaer', '</a>' ); ?>
			</p>

			<span class="customize-control-title"><?php printf( esc_html__( 'Enjoying %s?', 'lookaer' ), 'lookaer' ); ?></span>

			<p>
				<?php printf( esc_html__( 'Why not leave us a review on %sWordPress.org%s?  We\'d really appreciate it!', 'lookaer' ), '<a href="https://wordpress.org/themes/lookaer">', '</a>' ); ?>
			</p>

		</label>
		<?php
	}
}
