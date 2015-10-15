<div class="goto-page">
	<span class="title-view-products float-left">Ir a la p&aacute;gina</span>
	<input type="text" class="inputNew input-goto-page" onKeyPress="return onlyNumbers(event)" maxlength="4" />
	<a class="button dib js_gotoPage float-left" href="{$current_url}">
		<span>Ir</span>
	</a>
</div>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {	
	$('.js_gotoPage').click(function(e) {
		e.preventDefault();
        var page = $('.input-goto-page').val();
		if (page != '' && !isNaN(page)) {
			var url = $(this).attr('href') + '#/page-' + page;
            
            if (parseInt(page) <= parseInt($('#pagination_top span.count-page').text()) && parseInt(page) > 0)
                window.location = url;
            else
                window.location = baseDir + 'page-not-found';
		}		
	});  	
});
//]]>
function onlyNumbers(e){
	var key = window.Event ? e.which : e.keyCode
	return (key >= 48 && key <= 57)
}
</script>
