<section id="featuredProducts">
  <h2 class="d-flex align-items-center">
    <i class="material-icons md-30 mr-2">flash_on</i>
    {l s='Featured Products' d='Modules.FeaturedProducts.Shop'}
  </h2>
  <div class="row ">
    {foreach from=$products item="product"}
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
        {include file="catalog/_partials/miniatures/product.tpl" product=$product}
      </div>
      
    {/foreach}
  </div>
</section>