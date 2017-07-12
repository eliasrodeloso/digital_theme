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
  <div class="container">
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
          {*{block name='product_flags'}
            <div class="product-flags">
              {foreach from=$product.flags item=flag}
                <span class="{$flag.type}">{$flag.label}</span>
              {/foreach}
            </div>
          {/block}*}
        </div>
        

        <div class="col-sm-12 col-md-4 px-3">

          {block name='product_description_short'}
            <div id="product-description-short" itemprop="description">{$product.description_short nofilter}</div>
          {/block}

          {block name='product_discounts'}
            {include file='catalog/_partials/product-discounts.tpl'}
          {/block}

        </div>

        <div class="col-sm-12 col-md-4">

          {block name='product_availability_date'}
            {if $product.availability_date}
              <div id="product-availability-date">
                <h6>{l s='Availability date: %date%' d='Shop.Theme.Catalog' sprintf=[
                  '%date%' => $product.availability_date|date_format
                ]}</h6>
              </div>
            {/if}
          {/block}

          {block name='product_out_of_stock'}
            <div class="product-out-of-stock">
              {hook h='actionProductOutOfStock' product=$product}
            </div>
          {/block}

          {block name='product_buy'}
            <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
              <input type="hidden" name="token" value="{$static_token}">
              <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
              <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id">

              {block name='product_prices'}
                {include file='catalog/_partials/product-prices.tpl'}
              {/block}

              {if $groups}
                {block name='product_variants'}
                  {include file='catalog/_partials/product-variants.tpl'}
                {/block}
              {/if}

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
      
      {block name='product_pack'}
        {if $packItems}
          <section class="product-pack my-5">
            <h2 class="section-title">
              <i class="mdi mdi-package-variant md-30"></i>
              {l s='Pack content' d='Shop.Theme.Catalog'}
            </h2>
            <div class="row">

              {foreach from=$packItems item="product_pack"}
                <div class="col-sm-12 col-md-3">
                  {include file='catalog/_partials/miniatures/product.tpl' product=$product_pack}
                </div>
              {/foreach}

            </div>
          </section>
        {/if}
      {/block}

      <section class="row no-gutters product-description mt-5">
        <div class="col-sm-12 col-md-12">

          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item mr-2">
              <a href="#description" data-toggle="tab" role="tab" class="nav-link active">
                <i class="mdi mr-2 mdi-file-document"></i>
                {l s='Product description' d='Shop.Theme.Catalog'}
              </a>
            </li>
            {if $product.is_customizable && count($product.customizations.fields)}
              <li class="nav-item mr-2">
                <a href="#customizations" data-toggle="tab" role="tab" class="nav-link">
                  <i class="mdi mr-2 mdi-heart-box-outline"></i>
                  {l s='Make it yours' d='Shop.Theme.Catalog'}
                </a>
              </li>
            {/if}
            {if $product.features}
              <li class="nav-item mr-2">
                <a href="#data-sheet" data-toggle="tab" role="tab" class="nav-link">
                  <i class="mdi mr-2 mdi-information-outline"></i>
                  {l s='Technical data sheet' d='Shop.Theme.Catalog'}
                </a>
              </li>
            {/if}
          </ul>

          <div class="tab-content">

            <div role="tabpanel" class="tab-pane fade show active" id="description">
              {block name='product_description'}
                <div id="product-description">{$product.description nofilter}</div>
              {/block}
            </div>

            {if $product.is_customizable && count($product.customizations.fields)}
              <div role="tabpanel" class="tab-pane fade" id="customizations">
                {block name='product_customization'}
                  {include file='catalog/_partials/product-customization.tpl' customizations=$product.customizations}
                {/block}
              </div>
            {/if}

            {if $product.features}
              <div role="tabpanel" class="tab-pane fade" id="data-sheet">
                {block name='product_features'}
                  
                  <section class="product-features">
                    <h3>{l s='Data sheet' d='Shop.Theme.Catalog'}</h3>
                    <ul>
                      {foreach from=$product.features item=feature}
                        <li>{$feature.name} - {$feature.value}</li>
                      {/foreach}
                    </ul>
                  </section>
                  
                {/block}
              </div>
            {/if}

          </div>

          

        </div>
      </section>

      

      
      {block name='product_attachments'}
        {if $product.attachments}
          <section class="product-attachments">
            <h4 class="text-uppercase">{l s='Download' d='Shop.Theme.Actions'}</h4>
            {foreach from=$product.attachments item=attachment}
              <div class="attachment">
                <h5>
                  <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                    {$attachment.name}
                  </a>
                </h5>
                <p>{$attachment.description}</p>
                <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                  {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                </a>
              </div>
            {/foreach}
          </section>
        {/if}
      {/block}

      
    {/block}

  </section>

  {block name='product_accessories'}
    {if $accessories}
      <section class="product-accessories row mb-5">
        <h2 class="section-title w-100 mx-3">
          <i class="mdi mdi-tag-heart md-28"></i>
          {l s='Accessories' d='Shop.Theme.Catalog'}
        </h2>
        {foreach from=$accessories item="product_accessory"}

          {block name='product_miniature'}
            <div class="col-sm-12 col-md-3 product-miniature">
              {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
            </div>
          {/block}

        {/foreach}
      </section>
    {/if}
  {/block}

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
  </div>

{/block}
