<div class="blockcart cart-preview col-sm-2 col-md-2" data-refresh-url="{$refresh_url}">
  
  <div class="btn-group">
    <a href="{$cart_url}" class="btn btn-primary" rel="nofollow">
      <i class="fa fa-shopping-cart fa-lg"></i> <span class="ml-2">{$cart.summary_string}</span>
    </a>
    <a href="#" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
    <div class="dropdown-menu dropdown-menu-right">
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
    </div>
  </div>
   
  
</div>
