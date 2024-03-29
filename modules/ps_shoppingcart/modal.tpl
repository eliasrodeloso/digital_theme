<div id="blockcart-modal" data-close-on-click="true" class="modal fade">
  <div role="document" class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title d-flex align-items-center text-center">
          <i class="material-icons mr-2">&#xE876;</i>
          {l s='Product Successfully Added to Your Shopping Cart' d='Shop.Theme.Checkout'}
        </h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6 divide-right">
            <div class="row">
              <div class="col-md-6">
                <img class="img-fluid" src="{$product.cover.medium.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" itemprop="image">
              </div>
              <div class="col-md-6">
                <h6 class="h6 product-name">{$product.name}</h6>
                <p>{$product.price}</p>
                {hook h='displayProductPriceBlock' product=$product type="unit_price"}
                  {foreach from=$product.attributes item="property_value" key="property"}
                    <span><strong>{$property}</strong>: {$property_value}</span><br>
                  {/foreach}
                <p><strong>{l s='Quantity:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$product.cart_quantity}</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="cart-content">
              {if $cart.products_count > 1}
                <p class="cart-products-count">{l s='There are %products_count% items in your cart.' sprintf=['%products_count%' => $cart.products_count] d='Shop.Theme.Checkout'}</p>
              {else}
                <p class="cart-products-count">{l s='There is %product_count% item in your cart.' sprintf=['%product_count%' =>$cart.products_count] d='Shop.Theme.Checkout'}</p>
              {/if}
              <p><strong>{l s='Total products:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.subtotals.products.value}</p>
              <p><strong>{l s='Total shipping:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.subtotals.shipping.value} {hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}</p>
              {if $cart.subtotals.tax}
              	<p><strong>{$cart.subtotals.tax.label}</strong>&nbsp;{$cart.subtotals.tax.value}</p>
              {/if}
              <p><strong>{l s='Total:' d='Shop.Theme.Checkout'}</strong>&nbsp;{$cart.totals.total.value} {$cart.labels.tax_short}</p>
              
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{l s='Continue shopping' d='Shop.Theme.Actions'}</button>
        
        <a href="{$cart_url}" class="btn btn-primary d-flex">
          <i class="material-icons md-22 mr-2">&#xE876;</i>
          {l s='proceed to checkout' d='Shop.Theme.Actions'}
        </a>
      </div>
    </div>
  </div>
</div>