<div class="product-add-to-cart divide-bottom mb-3">
  {if !$configuration.is_catalog}

    {block name='product_quantity'}
      <div class="product-quantity form-group row no-gutters">
        <label for="quantity_wanted" class="col-12 font-weight-bold">{l s='Quantity'}</label>
        <div class="d-flex align-items-center row no-gutters col-12">
          <input
            type="text"
            name="qty"
            id="quantity_wanted"
            value="{$product.quantity_wanted}"
            class="input-group col-3 px-2 custom-select touchspin"
            data-min="{$product.minimal_quantity}"
            data-max="{$product.quantity}"
          >
          <button class="add-to-cart col-5 btn btn-primary ml-2 d-flex align-items-center justify-content-around" type="submit" name="add" data-button-action="add-to-cart" {if !$product.add_to_cart_url}disabled{/if}>
            <i class="material-icons md-18">add_shopping_cart</i>
            {l s='Add to cart' d='Shop.Theme.Actions'}
          </button>
        </div>
        
      </div>
    {/block}

    {block name='product_minimal_quantity'}
      {if $product.minimal_quantity > 1}
        <p class="product-minimal-quantity">
          {l
            s='The minimum purchase order quantity for the product is %quantity%.'
            d='Shop.Theme.Checkout'
            sprintf=['%quantity%' => $product.minimal_quantity]
          }
        </p>
      {/if}
    {/block}

  {/if}
</div>
