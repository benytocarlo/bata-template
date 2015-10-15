		{if !$content_only}
				</div>
				{if ($page_name != "index")}
					{if ($page_name != "products-comparison") && ($page_name != "product")}
						<div id="left_column" class="column">
							{$HOOK_LEFT_COLUMN}
						</div>
					{/if}
				{else}
					{if ($theme_settings.homepage_column == '1')}
						<div id="left_column" class="column">
							{$HOOK_LEFT_COLUMN}
						</div>
					{/if}
				{/if}
			</div>
		</div></div><!-- id="white_bg" -->
		<div class="hook-section section-wide-top wide-section">
			{hook h='wide_top'}
		</div>
		<div class="hook-section section-narrow-top">
			<div class="page_width">
				{hook h='narrow_top'}
			</div>
		</div>
		<div class="hook-section section-wide-middle wide-section">
			{hook h='wide_middle'}
		</div>
		<div class="hook-section section-narrow-middle">
			<div class="page_width">
				{hook h='narrow_middle'}
			</div>
		</div>
		<div class="hook-section section-wide-bottom wide-section">
			{hook h='wide_bottom'}
		</div>
		<div class="hook-section section-narrow-bottom">
			<div class="page_width">
				{hook h='narrow_bottom'}
			</div>
		</div>
		{hook h='footer_twitter'}
		<!-- Footer -->
		{if ($theme_settings.show_map_bottom == 1)}
		<div class="wide-bottom-map">
			<div id="bottom-map"></div>
			<div class="qc-container">
				<div class="page_width">
					<div class="quick-contact sec_bg">
						<div class="qc-indent">
							<h3 class="lmromandemi">{l s='Quick contact'}</h3>
							<form action="{$request_uri|escape:'html':'UTF-8'}" method="post" class="contact-form-box" enctype="multipart/form-data">
		                        <input class="" type="text" name="name" value="" placeholder="{l s='Your name'}" />
		                        <input class="" type="text" name="from" value="" placeholder="{l s='Email address'}" />
		                        <textarea class="form-control" name="message" onfocus="javascript:if(this.value=='{l s='Your message'}')this.value='';" onblur="javascript:if(this.value=='')this.value='{l s='Your message'}';" >{l s='Your message'}</textarea>
		                        <input type="submit" name="submitMessage" value="{l s='Send'}" class="button main_bg_hvr" />
							</form>
						</div>
					</div>
				</div>
			</div>
			<script>
			function initialize() {
			  var myLatlng = new google.maps.LatLng({$theme_settings.location_lat},{$theme_settings.location_lng});
			  var mapOptions = {
			    zoom: 7,
			    scrollwheel: false,
			    center: myLatlng,
			    mapTypeId: google.maps.MapTypeId.ROADMAP
			  }
			  var map = new google.maps.Map(document.getElementById('bottom-map'), mapOptions);

			  var marker = new google.maps.Marker({
			      position: myLatlng,
			      map: map
			  });
			}
			google.maps.event.addDomListener(window, 'load', initialize);
			</script>
		</div>
		{/if}
		<div id="footer" class="clearfix{if ($theme_settings.show_map_bottom == 1)} topmap{/if}">
			<div class="footer-top">
				{hook h="footer_top"}				
			</div>
			{if isset($theme_settings) && ($theme_settings.footer == 1)}
			<div class="footer-relative">
				<div class="page_width">
				{$HOOK_FOOTER}
				<div class="block our-stores">
					<div class="block_content">
						<h4 class="dropdown-cntrl dd_el_mobile">{l s='NUESTRAS TIENDAS'}</h4>
						<ul class="dd_container_mobile dropdown-content ul-our-stores">
							<li class="store">Encuentra todas las Tiendas de Bata a lo largo de Chile.</li>
							<li class="store"><a href="{$link->getPageLink('stores')|escape:'html'}" title="">{l s='Buscador de tiendas'}</a> </li>
						</ul>
						 
					</div>
				</div>
				<div class="clearfix"></div>
				</div>
			</div>
			{/if}
			{if isset($theme_settings) && $theme_settings.footer_bottom == 1}
			<div class="footer_bottom">
				<div class="footer_bottom-top-border">							
					<div class="page_width">
						<!--<div class="footer_text dib">{$theme_settings.footer_text}</div>
						<div class="footer_text phones-footer">{if ($theme_settings.email_ph_acc != "")}<span>{$theme_settings.email_ph_acc}</span>{/if}</div>
						<div class="footer_text phones-footer">{if ($theme_settings.email_ph_acc != "")}<span>{$theme_settings.email_ph_acc2}</span>{/if}</div>-->
						<div class="footer_text hrs-footer">{if ($theme_settings.email_addr_text != "")}<span><p><strong>Contact Center:</strong> servicioalcliente@bata.com - 600 460 1000 (Horarios de atención de lunes a viernes de 8:00 a 13:00 y de 14:00 a 18:00 hrs)<p><!--{$theme_settings.email_addr_text}--></span>{/if}<div>
					</div>
				</div>	
			</div>				
			{/if}
		</div>
	</div>
</div>
{/if}
{include file="$tpl_dir./global.tpl"}
<script type="text/javascript" src="{$js_dir}jquery.stellar.min.js"></script>
<script type="text/javascript">
    $(function(){
        $.stellar({
            horizontalScrolling: false,
            verticalOffset: 40
        });
    });
</script>
<script src="http://ads.mediasoul.net/seg?add=2806838&t=1" type="text/javascript"></script>
{literal}
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5K3M4J"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5K3M4J');</script>
<!-- End Google Tag Manager -->
{/literal}
{literal}
<!-- Facebook Conversion Code for Registros - Pauta FBK Oct -->
<script>(function() {
var _fbq = window._fbq || (window._fbq = []);
if (!_fbq.loaded) {
var fbds = document.createElement('script');
fbds.async = true;
fbds.src = '//connect.facebook.net/en_US/fbds.js';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(fbds, s);
_fbq.loaded = true;
}
})();
window._fbq = window._fbq || [];
window._fbq.push(['track', '6031351500921', {'value':'0.00','currency':'CLP'}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6031351500921&amp;cd[value]=0.00&amp;cd[currency]=CLP&amp;noscript=1" /></noscript>
<!-- End Facebook Conversion Code for Registros - Pauta FBK Oct -->
{/literal}
</body>
</html>
