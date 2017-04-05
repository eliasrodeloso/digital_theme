{block name='product_miniature_item'}
  <article class="dt-product-miniature card" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    {block name='product_thumbnail'}
      <a href="{$product.url}" class="thumbnail product-thumbnail">
        <img
          src = "{$product.cover.medium.url}"
          alt = "{$product.cover.legend}"
          data-full-size-image-url = "{$product.cover.large.url}"
          class = "card-img-top img-fluid dt-width-max"
        >
      </a>
    {/block}

    <div class="card-block">
    
      {block name='product_name'}
        <h6 class="card-title text-center" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30}</a></h6>
      {/block}
      
      
      {block name='product_review'}
        {hook h='displayProductListReviews' product=$product}
      {/block}
      
      {*
      {block name='product_description_short'}
        <div class="product-description-short" itemprop="description">{$product.description_short nofilter}</div>
      {/block}
      *}

      

      {block name='product_quick_view'}
      {/block}

      {*
      {block name='product_variants'}
        {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
      {/block}*}

      {block name='product_price_and_shipping'}
        {if $product.show_price}
          <div class="product-price-and-shipping">
            {if $product.has_discount}
              <p class="dt-regular-price">$ {$product.regular_price_amount}</p>
              {if $product.discount_type === 'percentage'}
                <span class="dt-discount-percentage">{$product.discount_percentage}</span>
              {/if}
              <p itemprop="price" class="dt-discounted-price">{$currency.sign} {$product.price_amount}</p>
            {else}
              <p itemprop="price" class="dt-undiscounted-price">{$currency.sign} {$product.regular_price_amount}</p>
            {/if}
          </div>
        {/if}
      {/block}

      {block name='product_flags'}
        <div class="dt-product-flags">
          {foreach from=$product.flags item=flag}
            <span class="{$flag.type}">{$flag.label}</span>
          {/foreach}
        </div>
      {/block}

      {block name='product_list_actions'}
        <div class="product-list-actions">
          <form action="{$urls.pages.cart}" method="post" class="d-flex justify-content-center" >
            <input type="hidden" value="{$product.id_product}" name="id_product">
            <input type="number" hidden name="qty" value="1" min="1">
            <button data-button-action="add-to-cart" class="btn btn-sm btn-outline-primary d-flex align-items-center">
              <i class="material-icons mr-2 md-22">add_shopping_cart</i>
              <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span> 
            </button>
          </form>
        </div>
      {/block}

      {*
      {block name='product_availability'}
        {if $product.show_availability}
          {* availability may take the values "available" or "unavailable"
          <span class='product-availability {$product.availability}'>{$product.availability_message}</span>
        {/if}
      {/block}*}

      

    </div>
    

  </article>
{/block}
