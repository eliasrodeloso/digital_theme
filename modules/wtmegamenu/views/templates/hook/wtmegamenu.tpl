
<!-- Module Megamenu-->
<div id="wt-menu-horizontal" class="wt-menu-horizontal">
<div class="container">
	{$id_lang = Context::getContext()->language->id}
	<div class="title-menu-mobile"><h6>{l s='Navigation' d='Modules.WTMegamenu'}</h6></div>

	<ul class="menu-content">

		{foreach from=$menus item=menu name=menus}

			{if isset($menu.type) && $menu.type == 'CAT' && $menu.dropdown == 1}
				
				{$menu.sub_menu nofilter}

			{else}

				<li class="level-1 {$menu.class} ">
					<div class="{if count($menu.sub_menu) > 0}dropdown{/if}">
						<a href="{$menu.link}">{$menu.title}</a>
						{if count($menu.sub_menu) > 0}
							<a href="" class="dropdown-toggle dropdown-toggle-split" id="menuDrop{$smarty.foreach.menus.iteration}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
								<i class="mdi mdi-chevron-down"></i>
								<span class="sr-only">Toggle Dropdown</span>
							</a>
						{/if}
						{if isset($menu.sub_menu) && count($menu.sub_menu) > 0}

							<div class="dropdown-content dropdown-menu row no-gutters {$menu.width_sub} {$menu.align_sub}" aria-labelledby="menuDrop{$smarty.foreach.menus.iteration}">

								{foreach from=$menu.sub_menu item=menu_row name=menu_row}

									<div class="row no-gutters {$menu_row.class}">

										{if isset($menu_row.list_col) && count($menu_row.list_col) > 0}
											{foreach from=$menu_row.list_col item= menu_col name=menu_col}
												
												<div class="wt-menu-col {$menu_col.width} {$menu_col.class} {$menu.type}">
													{if count($menu_col.list_menu_item) > 0}
														<ul class="ul-column">
														{foreach from=$menu_col.list_menu_item item= sub_menu_item name=sub_menu_item}
															<li class="menu-item {if $sub_menu_item.type_item == 1} item-header{else} item-line{/if} {if $sub_menu_item.type_link == 4}product-block{/if}">
																{if $sub_menu_item.type_link == 4}
																	{$id_lang = Context::getContext()->language->id}
																	{$id_lang = Context::getContext()->language->id}
																	{foreach from = $sub_menu_item.product item=product name=product}
																	<div class="">
																		<h3 class="product_-name">
																			<a class="product-name" href="{$product.link}" title="{$product.name}" itemprop="url" >
																				{$product.name|truncate:25:''}
																			</a>
																			
																		</h3>
																		<div class="product-image-container">
																			<a class="product_img_link" href="{$product.link}" title="{$product.name}" itemprop="url">
																				<img class="replace-2x img-responsive" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home_default')}" alt="{if !empty($product.legend)}{$product.legend}{else}{$product.name}{/if}" title="{if !empty($product.legend)}{$product.legend}{else}{$product.name}{/if}"  itemprop="image" />
																			</a>
																			{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
																				{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
                                                                                    <p class="sale-bkg animated" href="{$product.link}">
                                                                                        {if $product.specific_prices && $product.specific_prices.reduction_type == 'percentage'}
                                                                                        -{$product.specific_prices.reduction|escape:'quotes':'UTF-8' * 100}%
                                                                                        {else}
                                                                                        -{$product.price_without_reduction-$product.price|floatval}
                                                                                        {/if}
                                                                                    </p>
																				{/if}
																				{/if}
																			
																		</div>
																		<div class="content_price product-price-and-shipping">
																		{if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
																			<span itemprop="price" class="price {if isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0} special-price{/if}">												
																					{Product::convertAndFormatPrice($product.price)}

																					</span>
																			{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
																					<span class="old-price regular-price">
																					{Product::convertAndFormatPrice($product.price_without_reduction)}
																					</span>
																			{/if}
																				{hook h="displayProductPriceBlock" product=$product type="price"}
																				{hook h="displayProductPriceBlock" product=$product type="unit_price"}
																		{/if}
																	</div>
																		
																	</div>
																	{/foreach}
																{else if $sub_menu_item.type_link == 3}
																	<a href="{$sub_menu_item.link}">{$sub_menu_item.title}</a>
																	<div class="html-block">
																		{$sub_menu_item.text|escape:'quotes':'UTF-8' nofilter}
																	</div>
																{else}
																	<a href="{$sub_menu_item.link}">{$sub_menu_item.title nofilter}</a>
																{/if}
															</li>
														{/foreach}
														</ul>
													{/if}
												</div>
											{/foreach}
										{/if}
									</div>
								{/foreach}
							</div>
						{/if}
					</div>
					

					
				</li>
			{/if}
		{/foreach}
	</ul>
	
	<script type="text/javascript">
	
		text_more = "{l s='More' d='Modules.WTMegamenu'}";
		numLiItem = $("#wt-menu-horizontal .menu-content li.level-1").length;
		nIpadHorizontal = 6;
		nIpadVertical = 5;
		function getHtmlHide(nIpad,numLiItem) 
			 {
				var htmlLiHide="";
				if($("#more_menu").length==0)
					for(var i=(nIpad+1);i<=numLiItem;i++)
						htmlLiHide+='<li>'+$('#wt-menu-horizontal ul.menu-content li.level-1:nth-child('+i+')').html()+'</li>';
				return htmlLiHide;
			}

		htmlLiH = getHtmlHide(nIpadHorizontal,numLiItem);
		htmlLiV = getHtmlHide(nIpadVertical,numLiItem);
		htmlMenu=$("#wt-menu-horizontal").html();
		
		$(window).load(function(){
		addMoreResponsive(nIpadHorizontal,nIpadVertical,htmlLiH,htmlLiV,htmlMenu);
		});
		$(window).resize(function(){
		addMoreResponsive(nIpadHorizontal,nIpadVertical,htmlLiH,htmlLiV,htmlMenu);
		});
	</script>
</div>
</div>
<!-- /Module Megamenu -->