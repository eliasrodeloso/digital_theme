<div class="images-container">
  {block name='product_cover'}
    <div class="product-cover">
      <a href="{$product.cover.bySize.large_default.url}" data-fancybox="gallery" data-caption="{$product.cover.legend}">
          <img class="img-fluid" src="{$product.cover.bySize.medium_default.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image">    
      </a>
    </div>
  {/block}

  {block name='product_images'}
    <div id="carousel-product" class="owl-carousel">
      {foreach from=$product.images item=image}
        <div class="item">
          <a href="{$image.large.url}" data-fancybox="gallery" data-caption="{$image.legend}">
            <img src="{$image.small.url}" alt="{$image.legend}" title="{$image.legend}" itemprop="image">
          </a>
        </div>
      {/foreach}
    </div>
  {/block}
</div>
