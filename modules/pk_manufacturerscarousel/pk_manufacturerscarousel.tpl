<!-- Manufacturers Carousel module -->
<div class="our-marks"><span>NUESTRAS MARCAS</span></div> 
<div id="manufacturersCarousel" class="homemodule load-animate">
	{if $manufacturers}
		<ul id="m-list">
		{foreach from=$manufacturers item=manufacturer name=manufacturer_list}
			{if $smarty.foreach.manufacturer_list.iteration <= $text_list_nb}		
			<li class="{if $smarty.foreach.manufacturer_list.last}last_item{elseif $smarty.foreach.manufacturer_list.first}first_item{else}item{/if}">
				<div class="manuf-indent">
					<a class="smooth02" href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}" title="{l s='More about' mod='pk_manufacturerscarousel'} {$manufacturer.name}">
					<img class="dib" src="{$img_manu_dir}{$manufacturer.id_manufacturer}-manu_alysum.jpg" alt="" />
					</a>
					{if isset($show_title) AND $show_title == 1}
					<span class="lmroman">{$manufacturer.name|escape:'htmlall':'UTF-8'}</span>{/if}
				</div>
			</li>
			{/if}
		{/foreach}
		</ul>	
	{else}
		<p>{l s='No manufacturer' mod='pk_manufacturerscarousel'}</p>
	{/if}
	{if $manufacturers && ($manufacturers|count >= 6)}

{/if}
</div>	
<!-- /Manufacturers Carousel module -->
