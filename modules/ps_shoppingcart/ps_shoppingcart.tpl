<div class="blockcart cart-preview " data-refresh-url="{$refresh_url}">
  <div class="dropdown" id="dropdownShopping">
    <button type="button" class="hidden-sm-down btn dt-btn-dropdown-header dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="dropdownCart">
      <i class="material-icons md-36 hidden-sm-down" aria-hidden="true">&#xE8CC;</i>
      {if $cart.products}
        <span class="dt-quantity-badge hidden-sm-down">{$cart.products_count}</span>
      {/if}
    </button>
    <button type="button" class="hidden-md-up btn btn-sm dt-btn-dropdown-header dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="dropdownCart">
      <i class="material-icons md-24 hidden-md-up" aria-hidden="true">&#xE8CC;</i>
      {if $cart.products}
        <span class="dt-quantity-badge dt-sm">{$cart.products_count}</span>
      {/if}
    </button>
    <div class="dropdown-menu dropdown-menu-right animated bounceInUp" aria-labelledby="dropdownCart">
      
      {if $cart.products}
        {foreach from=$cart.products item=product}
          {include 'module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}
        {/foreach}
        <div class="dropdown-divider"></div>
        <div class="cart-subtotals mx-2">
          {foreach from=$cart.subtotals item="subtotal"}
            <div class="{$subtotal.type} d-flex justify-content-between">
              <span class="dt-label">{$subtotal.label}</span>
              {if $subtotal.amount > 0}
                <span class="dt-value">$ {$subtotal.amount}</span>
              {else}
                <span class="dt-value">{$subtotal.amount}</span>
              {/if}
            </div>
          {/foreach}
        </div>
        <div class="dropdown-divider"></div>
        <div class="cart-total d-flex justify-content-between mx-2">
          <span class="dt-label">{$cart.totals.total.label}</span>
          <span class="dt-value">$ {$cart.totals.total.amount}</span>
        </div>
    
        <div class="d-flex justify-content-around mx-2 mt-2">
          <a href="{$cart_url}" class="btn btn-outline-success dt-upper">Ir a pagar</a>
        </div>
      {else}
        <h2 class="dropdown-header">{l s='Tu carrito de compra está vacío' d='Shop.Theme.Actions'}</h2>
      {/if}
      
      
    </div>
  </div>
</div>
