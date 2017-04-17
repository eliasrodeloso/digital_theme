
<!-- Static Block module -->

<div id="customHtmlTopHome" class="col-sm-12 col-md-3 mt-3">
	{if $page_name == 'index'}
		{foreach from=$block_list item=block}
			{if isset($block.content)}
				{$block.content|escape:'quotes':'UTF-8' nofilter}
			{/if}
		{/foreach}
	{/if}
</div>

<!-- /Static block module -->