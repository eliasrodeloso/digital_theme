
<div class="row no-gutters dt-brands my-3">
	
	<div class="col-12">
		<h6>{$title}</h6>
		<div class="owl-carousel carousel">
			
			{foreach from=$brands item=brand}
				<span>
					<a href="{$brand.link}">
						<img src="{$brand.image}" alt="{$brand.name}">
					</a>
				</span>
			{/foreach}
			
		</div>
	</div>

</div>