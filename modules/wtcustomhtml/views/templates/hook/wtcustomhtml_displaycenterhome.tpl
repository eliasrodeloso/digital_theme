
<!-- Static Block module -->

<section id="customHtmlCenterHome" class="custom-html">
	<div class="row no-gutters">
		<div class="col-12">
			{if $page_name == 'index'}
			{foreach from=$block_list item=block}
				{if isset($block.content)}
					{$block.content|escape:'quotes':'UTF-8' nofilter}
				{/if}
			{/foreach}
			{/if}		
		</div>
	</div>
</section>



<!-- /Static block module -->