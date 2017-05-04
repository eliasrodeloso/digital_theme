

<span class="text-center rating-product">
	{section name="i" start=0 loop=5 step=1}
		{if $averageTotal le $smarty.section.i.index}
			<i class="mdi mdi-star-outline md-18"></i>
		{else}
			<i class="mdi mdi-star md-18"></i>
		{/if}
	{/section}
</span>