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
<div id="post-<?php the_ID(); ?>" <?php post_class(); ?> style="height: 400px;max-height: 800px;<?php lookaer_homepage_content_styles(); ?>" data-featured-image="<?php echo $featured_image; ?>">
	<div class="col-full">
		<center><a href="/lookaer/categoria-produto/promocoes/" class="button promocao-slide">Ver Promoção!</a></center>
	</div>
</div>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php
	do_action( 'lookaer_homepage' );
	?>
</article>

