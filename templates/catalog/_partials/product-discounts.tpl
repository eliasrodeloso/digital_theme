{if $product.quantity_discounts}
  <section class="product-discounts divide-top mt-2 pt-2">
    <h6>{l s='Volume discounts' d='Shop.Theme.Catalog'}</h6>
    
    {foreach from=$product.quantity_discounts item='quantity_discount' name='quantity_discounts'}
      <p class="my-0">
      {l s='¡Buy %qty% products and get up to %sign% %saved_amount%!'
        sprintf=[
          '%qty%' => $quantity_discount.quantity,
          '%sign%' => $currency.sign,
          '%saved_amount%' =>  $quantity_discount.save
        ]
        d='Shop.Theme.Catalog'
      }
    </p>
    {/foreach}
  </section>
{/if}
