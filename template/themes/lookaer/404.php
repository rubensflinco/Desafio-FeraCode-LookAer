<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @package lookaer
 */

get_header(); ?>

	<div id="primary" class="content-area">

		<main id="main" class="site-main" role="main">

			<div class="error-404 not-found">

				<div class="page-content">

					<header class="page-header">
						<h1 class="page-title"><?php esc_html_e( 'Opa! Essa página não pode ser encontrada.', 'lookaer' ); ?></h1>
					</header><!-- .page-header -->

					<p><?php esc_html_e( 'Nada foi encontrado neste local. Tente pesquisar ou confira os links abaixo.', 'lookaer' ); ?></p>

					<?php
					echo '<section aria-label="' . esc_html__( 'Pesquisar', 'lookaer' ) . '">';

					if ( lookaer_is_woocommerce_activated() ) {
						the_widget( 'WC_Widget_Product_Search' );
					} else {
						get_search_form();
					}

					echo '</section>';

					if ( lookaer_is_woocommerce_activated() ) {


						echo '<section aria-label="' . esc_html__( 'Produtos populares', 'lookaer' ) . '">';

							echo '<h2>' . esc_html__( 'Produtos populares', 'lookaer' ) . '</h2>';

							echo lookaer_do_shortcode( 'best_selling_products', array(
								'per_page' => 4,
								'columns'  => 4,
							) );

						echo '</section>';
					}
					?>

				</div><!-- .page-content -->
			</div><!-- .error-404 -->

		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer();
