
<div class="row no-gutters dt-brands my-3">
	
	<div class="col-12">
		<h2>{$title}</h2>
		<div id="carousel-home" class="owl-carousel carousel">
			
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