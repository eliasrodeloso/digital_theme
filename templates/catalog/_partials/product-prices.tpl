{if $product.show_price}
  <div class="product-prices divide-bottom mb-2">
    {block name='product_price'}
      <div class="product-price {if $product.has_discount}has-discount{/if}" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
        {if $product.has_discount}
          <div class="product-discount d-flex align-items-center">
            {hook h='displayProductPriceBlock' product=$product type="old_price"}
            <span class="regular-price">{convertPrice price=$product.regular_price_amount currency=$currency.iso_code}</span>
            {if $product.has_discount}
              {if $product.discount_type === 'percentage'}
                <span class="discount-percentage">{l s='Save %percentage%' d='Shop.Theme.Catalog' sprintf=['%percentage%' => $product.discount_percentage]}</span>
              {else}
                <span class="discount-amount">{l s='Save %amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.discount_amount]}</span>
              {/if}
            {/if}
          </div>
        {/if}
        <link itemprop="availability" href="https://schema.org/InStock"/>
        <div class="d-flex my-2">
          <span class="price" itemprop="price" content="{$product.price_amount}">
            {convertPrice price=$product.price_amount}
          </span>
          {if $configuration.display_taxes_label}
            <small class="align-self-end">{$product.labels.tax_short}</small>
          {/if}
          <meta itemprop="priceCurrency" content="{$currency.iso_code}">
        </div>
        {hook h='displayProductPriceBlock' product=$product type="price"}
        
      </div>
    {/block}

    {block name='product_without_taxes'}
      {if $priceDisplay == 2}
        <div class="product-without-taxes">{l s='%price% tax excl.' d='Shop.Theme.Catalog' sprintf=['%price%' => $product.price_tax_exc]}</div>
      {/if}
    {/block}

    {block name='product_pack_price'}
      {if $displayPackPrice}
        <div class="product-pack-price"><span>{l s='Instead of %price%' d='Shop.Theme.Catalog' sprintf=['%price%' => $noPackPrice]}</span></div>
      {/if}
    {/block}

    {block name='product_ecotax'}
      {if $product.ecotax.amount > 0}
        <div class="price-ecotax">{l s='Including %amount% for ecotax' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.ecotax.value]}
          {if $product.has_discount}
            {l s='(not impacted by the discount)' d='Shop.Theme.Catalog'}
          {/if}
        </div>
      {/if}
    {/block}

    {block name='product_unit_price'}
      {if $displayUnitPrice}
        <div class="product-unit-price mb-2 text-uppercase">
          {l s='(%currency% %unit_price%)' d='Shop.Theme.Catalog' sprintf=[
            '%currency%' => $currency.sign,
            '%unit_price%' => $product.unit_price_full]
          }
        </div>
      {/if}
    {/block}

    {hook h='displayProductPriceBlock' product=$product type="weight" hook_origin='product_sheet'}
    {hook h='displayProductPriceBlock' product=$product type="after_price"}
  </div>
{/if}
