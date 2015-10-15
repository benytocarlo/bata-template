{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}


{include file="$tpl_dir./errors.tpl"}

{if !isset($errors) OR !sizeof($errors)}
	<h1 class="page-heading product-listing">
		{l s='List of products by manufacturer'}&nbsp;{$manufacturer->name|escape:'html':'UTF-8'}
	</h1>
	{if !empty($manufacturer->description) || !empty($manufacturer->short_description)}
		<div class="description_box">
			{if !empty($manufacturer->short_description)}
				<div class="short_desc">
					{$manufacturer->short_description}
				</div>
				<div class="hide_desc">
					{$manufacturer->description}
				</div>
				<a href="#" class="lnk_more" onclick="$(this).prev().slideDown('slow'); $(this).hide();$(this).prev().prev().hide(); return false;">
					{l s='More'}
				</a>
			{else}
				<div>
					{$manufacturer->description}
				</div>
			{/if}
		</div>
	{/if}

	{if $products}
        <div class="content_sortPagiBar content_sortPagiHeader">
            <div class="breadcrumbBar clearfix">
                {include file="$tpl_dir./breadcrumb.tpl"}
                <div class="sortBar">
                    {include file="./product-sort.tpl"}
                </div>
            </div>				
            <div class="sortPagiBar clearfix">
                <!--<div class="views_float">
                    {include file="./product-compare.tpl"}																	
                </div>-->
                <div class="float-left">						
                    {if isset($theme_settings.allcookies.listingView)}
                        {if $theme_settings.allcookies.listingView == 'view_grid'}
                            {assign var='view_type' value="view_grid"}
                        {/if}
                        {if $theme_settings.allcookies.listingView == 'view_list'}
                            {assign var='view_type' value="view_list"}
                        {/if}
                    {else}
                        {if $theme_settings.view == 'view_grid'}
                            {assign var='view_type' value="view_grid"}
                        {/if}
                        {if $theme_settings.view == 'view_list'}
                            {assign var='view_type' value="view_list"}
                        {/if}
                    {/if}
                    {if isset($theme_settings) && ($theme_settings.lc_buttons == 1)}
                    <div class="views dib">
                        <span class="title-view-products">Ver productos</span>
                        <div class="view_btn dib{if $view_type == 'view_grid'} active{/if} smooth02" id="view_grid" title="grid"></div></span>
                        <div class="view_btn dib{if $view_type == 'view_list'} active{/if} smooth02" id="view_list" title="list"></div></span>
                    </div>					
                    {/if}
                </div>
                <div class="float-right block-pagination-top">										
                    {*include file="./pagination-top.tpl" paginationId='top'*}
                </div>
            </div>
        </div>
        <div id="listing_view" class="{$view_type}">
            {include file="./product-list.tpl" products=$products}				
        </div>
        {if $nb_products > $products_per_page && $start!=$stop}
        <div class="content_sortPagiBar content_sortPagiBarFooter">
            <div class="sortPagiBarFooter content_paginator clearfix">
                {*include file="./nbr-product-page.tpl" paginationId='bottom'*}
                {include file="./nbr-custom-product-page.tpl" paginationId='bottom'}
                {include file="./pagination.tpl" paginationId='bottom'}
            </div>
        </div>
        {/if}
    {else}
        <p class="warning alert alert-warning">{l s='There are no products in this category.'}</p>
    {/if} 
{/if}
