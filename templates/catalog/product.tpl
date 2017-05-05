{extends file=$layout}

{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='head' append}
  <meta property="og:type" content="product">
  <meta property="og:url" content="{$urls.current_url}">
  <meta property="og:title" content="{$page.meta.title}">
  <meta property="og:site_name" content="{$shop.name}">
  <meta property="og:description" content="{$page.meta.description}">
  <meta property="og:image" content="{$product.cover.large.url}">
  <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
  <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
  <meta property="product:price:amount" content="{$product.price_amount}">
  <meta property="product:price:currency" content="{$currency.iso_code}">
  {if isset($product.weight) && ($product.weight != 0)}
    <meta property="product:weight:value" content="{$product.weight}">
    <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
{/block}

{block name='content'}

  <section id="product-page" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.url}">

    {block name='product_activation'}
      {include file='catalog/_partials/product-activation.tpl'}
    {/block}

    {block name='page_content_container'}
      {block name='page_header'}
        <header class="product-header">
          <h1 class="product-title" itemprop="name">{$product.name}</h1>
          <div class="product-subtitle">

            {block name='product_reference'}
              {if $product.reference}
                <div class="product-meta">
                  <span id="product-reference">
                    <label class="font-weight-bold">{l s='Reference:' d='Shop.Theme.Catalog'}</label>
                    <span itemprop="sku">{$product.reference}</span>
                  </span>
                </div>
              {/if}
            {/block}

            {block name='product_condition'}
              {if $product.condition}
              <div class="product-meta">
                <span id="product-condition">
                  <link itemprop="itemCondition" href="{$product.condition.schema_url}"/>
                  <span>{$product.condition.label}</span>
                </span>
              </div>
              {/if}
            {/block}

            {block name='product_availability'}
              {if $product.show_availability}
                <div class="product-meta">
                  <span id="product-availability">{$product.availability_message}</span>
                </div>
              {/if}
            {/block}

            {block name='product_quantities'}
              {if $product.show_quantities}
                <div id="product-quantities" class="product-meta">
                  {$product.quantity} {$product.quantity_label}
                </div>
              {/if}
            {/block}

            {block name='product_brand'}
              <div class="product-meta">
                <a itemprop="brand" href="{$product_brand_url}">
                  {l s="See more %brand% products" d='Shop.Theme.Catalog' sprintf=['%brand%' => $product_manufacturer->name]}
                </a> 
              </div>
            {/block}

            {block name="product_reviews"}
              <div class="product-meta">
                {hook h='displayProductListReviews' product=$product}
              </div>
            {/block}
            
          </div>
        </header>
      {/block}
      
      <section class="row no-gutters">
        <div class="col-sm-12 col-md-4">
          {block name='product_cover_tumbnails'}
            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
          {/block}
          {block name='product_flags'}
            <div class="product-flags">
              {foreach from=$product.flags item=flag}
                <span class="{$flag.type}">{$flag.label}</span>
              {/foreach}
            </div>
          {/block}
        </div>
        

        <div class="col-sm-12 col-md-4 px-3">

          {block name='product_description_short'}
            <div id="product-description-short" itemprop="description">{$product.description_short nofilter}</div>
          {/block}

        </div>

        <div class="col-sm-12 col-md-4">

          {block name='product_availability_date'}
            {if $product.availability_date}
              <div id="product-availability-date">
                <label class="font-weight-bold">{l s='Availability date:' d='Shop.Theme.Catalog'} </label>
                <span>{$product.availability_date}</span>
              </div>
            {/if}
          {/block}

          {block name='product_out_of_stock'}
            <div class="product-out-of-stock">
              {hook h='actionProductOutOfStock' product=$product}
            </div>
          {/block}

          {block name='product_discounts'}
            {include file='catalog/_partials/product-discounts.tpl'}
          {/block}

          {block name='product_buy'}
            <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
              <input type="hidden" name="token" value="{$static_token}">
              <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
              <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

              {block name='product_prices'}
                {include file='catalog/_partials/product-prices.tpl'}
              {/block}

              {block name='product_variants'}
                {include file='catalog/_partials/product-variants.tpl'}
              {/block}


              {block name='product_add_to_cart'}
                {include file='catalog/_partials/product-add-to-cart.tpl'}
              {/block}

              {block name='hook_product_buttons'}
                {hook h='displayProductButtons' product=$product}
              {/block}

              {block name='product_additional_info'}
                {include file='catalog/_partials/product-additional-info.tpl'}
              {/block}

              {block name='product_refresh'}
                <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit" value="{l s='Refresh' d='Shop.Theme.Actions'}">
              {/block}
            </form>
          {/block}
        </div>

      </section>

      <section class="row no-gutters product-description">
        <div class="col-sm-12 col-md-12">

          {if $product.is_customizable && count($product.customizations.fields)}
            {block name='product_customization'}
              {include file='catalog/_partials/product-customization.tpl' customizations=$product.customizations}
            {/block}
          {/if}

          {block name='product_description'}
            <div id="product-description">{$product.description nofilter}</div>
          {/block}

          {block name='product_features'}
            {if $product.features}
              <section class="product-features">
                <h3>{l s='Data sheet' d='Shop.Theme.Catalog'}</h3>
                <ul>
                  {foreach from=$product.features item=feature}
                    <li>{$feature.name} - {$feature.value}</li>
                  {/foreach}
                </ul>
              </section>
            {/if}
          {/block}

          {block name='product_pack'}
            {if $packItems}
              <section class="product-pack">
                <h3>{l s='Pack content' d='Shop.Theme.Catalog'}</h3>
                {foreach from=$packItems item="product_pack"}
                  {block name='product_pack_miniature'}
                    {include file='catalog/_partials/pack-product.tpl' product=$product_pack}
                  {/block}
                {/foreach}
              </section>
            {/if}
          {/block}

          {block name='product_accessories'}
            {if $accessories}
              <section class="product-accessories">
                <h3>{l s='Accessories' d='Shop.Theme.Catalog'}</h3>
                {foreach from=$accessories item="product_accessory"}
                  {block name='product_miniature'}
                    {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
                  {/block}
                {/foreach}
              </section>
            {/if}
          {/block}

          {block name='product_attachments'}
            {if $product.attachments}
              <section class="product-attachments">
                <h3>{l s='Download' d='Shop.Theme.Actions'}</h3>
                {foreach from=$product.attachments item=attachment}
                  <div class="attachment">
                    <h4>
                      <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                        {$attachment.name}
                      </a>
                    </h4>
                    <p>{$attachment.description}</p>
                    <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                      {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                    </a>
                  </div>
                {/foreach}
              </section>
            {/if}
          {/block}

        </div>
      </section>

      <footer class="row no-gutter product-footer">
        {foreach from=$product.extraContent item=extra key=extraKey}
          <div class="{$extra.attr.class}" id="extra-{$extraKey}">
            {$extra.content nofilter}
          </div>
        {/foreach}
        {block name='product_footer'}
          
          {hook h='displayFooterProduct' product=$product category=$category}
        {/block}
      </footer>
    {/block}

  </section>

{/block}
