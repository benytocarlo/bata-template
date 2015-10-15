{if isset($no_follow) AND $no_follow}
	{assign var='no_follow_text' value='rel="nofollow"'}
{else}
	{assign var='no_follow_text' value=''}
{/if}

{if isset($p) AND $p}
	{if isset($smarty.get.id_category) && $smarty.get.id_category && isset($category)}
		{if !isset($current_url)}
			{assign var='requestPage' value=$link->getPaginationLink('category', $category, false, false, true, false)}
		{else}
			{assign var='requestPage' value=$current_url}
		{/if}
		{assign var='requestNb' value=$link->getPaginationLink('category', $category, true, false, false, true)}
	{elseif isset($smarty.get.id_manufacturer) && $smarty.get.id_manufacturer && isset($manufacturer)}
		{assign var='requestPage' value=$link->getPaginationLink('manufacturer', $manufacturer, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('manufacturer', $manufacturer, true, false, false, true)}
	{elseif isset($smarty.get.id_supplier) && $smarty.get.id_supplier && isset($supplier)}
		{assign var='requestPage' value=$link->getPaginationLink('supplier', $supplier, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('supplier', $supplier, true, false, false, true)}
	{else}
		{if !isset($current_url)}
			{assign var='requestPage' value=$link->getPaginationLink(false, false, false, false, true, false)}
		{else}
			{assign var='requestPage' value=$current_url}
		{/if}
		{assign var='requestNb' value=$link->getPaginationLink(false, false, true, false, false, true)}
	{/if}
    {if $start!=$stop}
        <!-- Pagination -->
        <div id="pagination{if isset($paginationId)}_{$paginationId}{/if}" class="pagination">
            <div class="container-items-pag">
                <span class="pag-top title-view-products">{$p|escape:'html':'UTF-8'} de {$pages_nb}</span>        
            </div>
            <div class="container-items-buttons">
                {if $p != 1}
                    {assign var='p_previous' value=$p-1}
                    <a id="pagination_previous{if isset($paginationId)}_{$paginationId}{/if}" {$no_follow_text} href="{$link->goPage($requestPage, $p_prev)}" class="pagination_previous buttons-pag prev"></a>            
                {else}
                    <span id="pagination_previous{if isset($paginationId)}_{$paginationId}{/if}" class="pagination_previous disabled buttons-pag prev"></span>
                {/if}
                {if $pages_nb > 1 AND $p != $pages_nb}
                    {assign var='p_next' value=$p+1}					
                    <a id="pagination_next{if isset($paginationId)}_{$paginationId}{/if}" {$no_follow_text} href="{$link->goPage($requestPage, $p_next)}" class="pagination_next buttons-pag next"></a>
                {else}
                    <span id="pagination_next{if isset($paginationId)}_{$paginationId}{/if}" class="pagination_next buttons-pag disabled next"></span>
                {/if}
            </div>
            <input id="count-page" type="hidden" value="{$pages_nb}" />
        </div>    
        <!-- /Pagination -->
    {/if}
{/if}