{if $page_name == "index"} 
<!-- Block Newsletter module-->
<div class="contentrs">
<div id="newsletter_block_ext" class="homemodule load-animate">
	<div class="col nwltr dib">
		<div class="content">
			<!--<img class="newsletter_img" src="{$image_news}" alt="" />-->
			<div class="opaque smooth02">
				<div class="indent">					
					<!--<h4 class="lmromancaps">{l s='Become aVIP member' mod='pk_newsletter'}</h4>-->
					{if isset($msg) && $msg}
						<span class="{if $nw_error}warning_inline{else}success_inline{/if}">{$msg}</span>
					{else}
						<p class="lmroman">{l s='¡RECIBE NOTICIAS!' mod='pk_newsletter'}</p>
						<p class="info-news">{l s='Suscríbete a nuestro newsletter para que recibas ofertas exclusivas, pensadas sólo para ti.' mod='pk_newsletter'}</p>
					{/if}					
				<div style="height:87px;">	
					<form action="{$link->getPageLink('index')}" method="post" class="newsletter_form dib">
						<div class="ind">
							{* @todo use jquery (focusin, focusout) instead of onblur and onfocus *}
							<input type="text" name="email" size="18" 
								value="{if isset($value) && $value}{$value}{else}{l s='your e-mail' mod='pk_newsletter'}{/if}" 
								onfocus="javascript:if(this.value=='{l s='your e-mail' mod='pk_newsletter'}')this.value='';" 
								onblur="javascript:if(this.value=='')this.value='{l s='your e-mail' mod='pk_newsletter'}';" 
								class="inputNew" />
								<!--input type="submit" value="{l s='Send' mod='pk_newsletter'}" class="minibutton lmromancaps smooth02 main_bg_hvr sec_bg" name="submitNewsletter" /-->
							<input type="hidden" name="action" value="0" />
						</div>
						<div class="genero">
							<select name="sexo" class="selsexo">
								<option value="Mujer">{l s='Soy Mujer' mod='pk_newsletter'}</option>
								<option value="Hombre">{l s='Soy Hombre' mod='pk_newsletter'}</option>
							</select>
						</div>
						<button type="submit" class="btn-subscription" name="submitNewsletter" value="{l s='Suscribete' mod='pk_newsletter'}">{l s='Suscríbete'}</button>
					</form>
				</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col social dib">
		<div class="content">
			<!--img class="soc_img" src="{$image_soc}" alt="" /-->
			<div class="opaque smooth02">
				<div class="indent">
				<!--<h4 class="lmromancaps">{l s='Socialize With Us!' mod='pk_newsletter'}</h4>-->
				<p class="lmroman">{l s='FACEBOOK' mod='pk_newsletter'}</p>
				<p class="info-news">{l s='Únete a nuestra comunidad para que recibas ofertas y contenido exclusivo.' mod='pk_newsletter'}</p>
				<ul class="newsletter_soc">{if isset($youtube_url) && $youtube_url}<li class="dib smooth02 main_bg_hvr youtube"><a class="icon" target="_blank" href="http://www.youtube.com/user/{$youtube_url}"><svg class="svgic svgic-youtube"><use xlink:href="#si-youtube"></use></svg></a></li>{/if}{if isset($twitter_url) && $twitter_url}<li class="dib smooth02 main_bg_hvr twitter"><a class="icon" target="_blank" href="https://twitter.com/#!/{$twitter_url}"><svg class="svgic svgic-twitter"><use xlink:href="#si-twitter"></use></svg></a></li>{/if}{if isset($facebook_url) && $facebook_url}<li class="dib smooth02 main_bg_hvr facebook"><a class="icon" target="_blank" href="http://www.facebook.com/{$facebook_url}"><svg class="svgic svgic-facebook"><use xlink:href="#si-facebook"></use></svg></a></li>{/if}{if isset($gplus_url) && $gplus_url}<li class="dib smooth02 main_bg_hvr google_plus"><a class="icon" target="_blank" href="https://plus.google.com/u/0/{$gplus_url}/posts"><svg class="svgic svgic-gplus"><use xlink:href="#si-gplus"></use></svg></a></li>{/if}</ul>
				</div>
			</div>
		</div>
	</div><!--div class="col promo dib">
	<div class="content">
		<a href="{$adv_link}" title="{$adv_title}">
			<img src="{$image}" alt="{$adv_title}" title="{$adv_title}" width="406" height="406" />
		</a>
	</div>
	</div-->
</div>
<div class="imgrs"></div>
<div class="power">
	<h1>{l s='estilo y calidad para' mod='pk_newsletter'}</h1>
	<h1>{l s='acompañarte siempre.' mod='pk_newsletter'}</h1>
	<a href="/60-deporte">{l s='revisa el catálogo' mod='pk_newsletter'}</a>
</div>
</div>
<!-- /Block Newsletter module-->
{/if}