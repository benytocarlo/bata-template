{if $slides|@count != 0}
    {if $minicSlider.options.front == 1 && $page_name != 'index'}
        <!-- Banner Carousel Slider -->
    {else}
    <div class="bannerprom50">
      <div class="banners_carousel container homemodule load-animate">
          <div class="banners_carousel-container">
          <div id="banners_carousel" class="banners_carousel_top theme-default{if $minicSlider.options.thumbnail == 1 and $minicSlider.options.control != 0} controlnav-thumbs{/if}">   
                <ul id="sliderCarousel" class="slides bannersCarousel sliderCarousel_top">
                    {foreach from=$slides item=image name=singleimage}
                    <li class="dib">
                        <div class="banners_carousel_wrap">
                        {if $image.url != ''}<a href="{$image.url}" {if $image.target == 1}target="_blank"{/if}>{/if}
                            <img src="{$minicSlider.path.images}{$image.image}" class="slider_image" 
                                alt="{if $image.alt}{$image.alt}{/if}" />
                        {if $image.url != ''}</a>{/if}
                        </div>
                    </li>
                    {/foreach}
                </ul>
          </div> 
          </div>
      </div>
    </div>
    {/if}
{/if}