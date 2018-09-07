<?php
/**
 * The template used for displaying page content in template-homepage.php
 *
 * @package lookaer
 */

?>
<?php
$featured_image = get_the_post_thumbnail_url( get_the_ID(), 'thumbnail' );
?>


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width: 100%;max-height: 800px;object-fit: cover;">
	<div class="carousel-inner" style="width: 100%;max-height: 800px;object-fit: cover;">

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_7897c989c79d6dd8846f55cb15cb82a6.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item active" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_2af42785e69263e3b394e7fdbe265e2d.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_1485ef57f6186a72d3d7d6707279a344.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_09cf9428b31f52d002b79ee38848ec38.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_d835a066b086359010d6e6650f547130.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_813f2885143dae8d07139fa95a618dd4.jpg" style="width: 100%;object-fit: cover;">
		</div>

		<div class="item" style="width: 100%;max-height: 800px;object-fit: cover;">
		<img src="https://www.penhagarden.com.br/site/images/slides/slide_d1639910f6c5e42ac725ac973c428fc8.jpg" style="width: 100%;object-fit: cover;">
		</div>
				
	</div>
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
</div>

<div class="container">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<?php
				do_action( 'lookaer_homepage' );
				?>
			</article>
		</main>
	</div>
</div>

