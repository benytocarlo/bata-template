<script type="text/javascript">
var productcomments_controller_url = '{$productcomments_controller_url}';
var confirm_report_message = '{l s='Are you sure you want report this comment?' mod='productcomments' js=1}';
var secure_key = '{$secure_key}';
var productcomments_url_rewrite = '{$productcomments_url_rewriting_activated}';
var productcomment_added = '{l s='Your comment has been added!' mod='productcomments' js=1}';
var productcomment_added_moderation = '{l s='Your comment has been added and will be available once approved by a moderator' mod='productcomments' js=1}';
var productcomment_title = '{l s='New comment' mod='productcomments' js=1}';
var productcomment_ok = '{l s='Aceptar' mod='productcomments' js=1}';
var moderation_active = {$moderation_active};
</script>

<section data-section="10">
	<div id="product_comments_block_tab">
	{if (!$too_early AND ($logged OR $allow_guests))}
		<a id="new_comment_tab_btn" class="button open-comment-form" href="#new_comment_form">{l s='Dejar comentario' mod='productcomments'}</a>
    {/if}
    
	{if $comments}
		{foreach from=$comments item=comment}
			{if $comment.content}
			<div class="comment clearfix">
				<div class="comment_author">
					<span>{l s='Valoración' mod='productcomments'}&nbsp</span>
					<div class="star_content clearfix">
					{section name="i" start=0 loop=5 step=1}
						{if $comment.grade le $smarty.section.i.index}
							<div class="star dib"><svg class="svgic svgic-star"><use xlink:href="#si-star"></use></svg></div>
						{else}
							<div class="star dib star_on"><svg class="svgic svgic-star"><use xlink:href="#si-star"></use></svg></div>
						{/if}
					{/section}
					</div>
					<div class="comment_author_infos">
						<strong>{$comment.customer_name|escape:'html':'UTF-8'}</strong> <em>{dateFormat date=$comment.date_add|escape:'html':'UTF-8' full=0}</em>
					</div>
				</div>
				<div class="comment_details">
					<!--<h4 class="title_block">{$comment.title}</h4>-->
					<p>{$comment.content|escape:'html':'UTF-8'|nl2br}</p>
					<ul>
						{if $comment.total_advice > 0}
							<li>{l s='%1$d out of %2$d people found this review useful.' sprintf=[$comment.total_useful,$comment.total_advice] mod='productcomments'}</li>
						{/if}
						{if $logged}
							{if !$comment.customer_advice}
							<li>{l s='Was this comment useful to you?' mod='productcomments'}<button class="usefulness_btn" data-is-usefull="1" data-id-product-comment="{$comment.id_product_comment}">{l s='yes' mod='productcomments'}</button><button class="usefulness_btn" data-is-usefull="0" data-id-product-comment="{$comment.id_product_comment}">{l s='no' mod='productcomments'}</button></li>
							{/if}
							{if !$comment.customer_report}
							<li><span class="report_btn" data-id-product-comment="{$comment.id_product_comment}">{l s='Report abuse' mod='productcomments'}</span></li>
							{/if}
						{/if}
					</ul>
				</div>
			</div>
			{/if}
		{/foreach}        
	{else}
		{if (!$too_early AND ($logged OR $allow_guests))}
		<p class="align_left">
			<a id="new_comment_tab_btn" class="open-comment-form custom-open-comment-form" href="#new_comment_form">{l s='Be the first to write your review' mod='productcomments'} !</a>
		</p>
		{else}
		<p class="align_left">{l s='No customer comments for the moment.' mod='productcomments'}</p>
		{/if}
	{/if}	
	</div>
</section>

{if isset($product) && $product}
<!-- Fancybox -->
<div style="display: none;">
	<div id="new_comment_form">
		<form id="id_new_comment_form" action="#">
			<h2 class="title">{l s='DEJA TU COMENTARIO' mod='productcomments'}</h2>
			<div class="new_comment_form_content">
				<div id="new_comment_form_error" class="error" style="display: none; padding: 15px 25px">
					<ul></ul>
				</div>                
				{if $criterions|@count > 0}
					<ul id="criterions_list">
					{foreach from=$criterions item='criterion'}
						<li>
							<label>{$criterion.name|escape:'html':'UTF-8'}</label>
							<div class="star_content">                                
								<input class="star dib" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="1" />
								<input class="star dib" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="2" />
								<input class="star dib" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="3" checked="checked" />
								<input class="star dib" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="4" />
								<input class="star dib" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="5" />
							</div>
							<div class="clearfix"></div>
						</li>
					{/foreach}
					</ul>
				{/if}

				<!--<label for="comment_title">{l s='Title' mod='productcomments'}: <sup class="required">*</sup></label>-->
				<input id="comment_title" name="title" type="hidden" value="Bata"/>
                
                {if $allow_guests == true && !$logged}
				<label>{l s='Nombre' mod='productcomments'}</label>
				<input id="commentCustomerName" name="customer_name" type="text" value=""/>
				{/if}
                
				<label for="Comentario">{l s='Comment' mod='productcomments'}</label>
				<textarea id="content" name="content"></textarea>

				<div id="new_comment_form_footer">
					<input id="id_product_comment_send" name="id_product" type="hidden" value='{$id_product_comment_form}' />
					<div class="clearfix"></div>
					<!--<p class="fl required custom-required-field"><sup>*</sup> {l s='Required fields' mod='productcomments'}</p>-->
					<p class="fr">
                        <a href="#" class="button cancel_button" onclick="$.fancybox.close();">{l s='Cancel' mod='productcomments'}</a>
						<button id="submitNewMessage" name="submitMessage" class="button" type="submit">{l s='COMENTAR' mod='productcomments'}</button>
						<!--<button id="submitNewMessage" class="button" name="submitMessage" type="submit">{l s='COMENTAR' mod='productcomments'}</button>-->&nbsp;
						
					</p>
					<div class="clearfix"></div>
				</div>
			</div>
		</form><!-- /end new_comment_form_content -->
	</div>
</div>
<!-- End fancybox -->
{/if}