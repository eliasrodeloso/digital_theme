

<div class="text-center">
	<div class="rating-product">
		{section name="i" start=0 loop=5 step=1}
			{if $averageTotal le $smarty.section.i.index}
				<i class="material-icons md-18">star_border</i>
			{else}
				<i class="material-icons md-18">star_rate</i>
			{/if}
		{/section}
	</div>
</div>