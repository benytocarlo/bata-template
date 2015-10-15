{if count($categoryProducts) > 0 && $categoryProducts !== false}
<div class="clearfix blockproductscategory">
	<div class="productscategory_h2">{l s='Productos Relacionados' mod='productscategory'}</div>
	<div id="{if count($categoryProducts) > 2}productscategory{else}productscategory_noscroll{/if}">
	<div id="productscategory_slider">
	<div id="productscategory_list">
		<ul>
			{foreach from=$categoryProducts item='categoryProduct' name=categoryProduct}<!--{if count($categoryProducts) < 6}style="width: {math equation="width / nbImages" width=94 nbImages=$categoryProducts|@count}%"{/if}--> 
			<li>
				<div class="li-indent">
				<a href="{$link->getProductLink($categoryProduct.id_product, $categoryProduct.link_rewrite, $categoryProduct.category, $categoryProduct.ean13)}" class="lnk_img" title="{$categoryProduct.name|htmlspecialchars}"><img src="{$link->getImageLink($categoryProduct.link_rewrite, $categoryProduct.id_image, 'home_default')}" alt="{$categoryProduct.name|htmlspecialchars}" />
				<div class="info-product">
				<span class="nameproslider">{$categoryProduct.name}</span>
				 <p class="shordes">{$categoryProduct.description_short|strip_tags:'UTF-8'|truncate:70}</p>
				 <span class="priceproduct">{displayPrice price=$categoryProduct.price}</span> 
				 </div>
				</a>


			</div>
			</li>
			{/foreach}
		</ul>
	</div>
	</div>
	</div>
	{if count($categoryProducts) > 1}
	<script type="text/javascript">
	    $(document).ready(function() {
      $("#productscategory_list ul").slick({
            slidesToShow:6,
            slidesToScroll:1,
            autoPlay:false,
            autoPlaySpeed: 3000,            
            pauseOnHover: false,
            focusOnSelect:false,
            waitForAnimate:false,
            infinite:false,
            arrows:true,
            responsive: [
              {
                breakpoint: 1170,
                settings: {
                  slidesToShow: 5,
                  slidesToScroll: 1,
                  infinite: false,
                  dots: false
                }
              },
              {
                breakpoint: 979,
                settings: {
                  slidesToShow: 4,
                  slidesToScroll: 1,
                  infinite: false,
                  dots: false
                }
              },
              {
                breakpoint: 727,
                settings: {
                  slidesToShow: 2,
                  slidesToScroll: 1
                }
              },
              {
                breakpoint: 479,
                settings: {
                  slidesToShow: 1,
                  slidesToScroll: 1
                }
              }
            ]
      });
    //$("#productsCarousel_bottom").find(".flexisel-nav").appendTo("#productsCarousel_bottom .carousel-title");
});
	</script>
	{/if}
</div>
{/if}