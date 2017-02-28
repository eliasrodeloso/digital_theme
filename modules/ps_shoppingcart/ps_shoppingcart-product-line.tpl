<div class="d-flex flex-row justify-content-between px-2 mb-2">
    <div class="d-flex mr-3">
        <a href="{$product.url}" title="{$product.name}" class="mr-2">
            <img class="media-object dt-cart-img rounded" src="{$product.cover.small.url}" alt="{$product.name}">
        </a>
        <div class="d-flex flex-column dt-no-wrap">
            <h6 class="font-weight-bold">
                <span class="product-quantity">{$product.quantity}</span>
                x 
                <span class="product-name">{$product.name|truncate:19}</span>
            </h6>
            <span class="dt-blue-text dt-price-mini">$ {$product.total_wt}</span>
        </div>
    </div>
    <a class="remove-from-cart" rel="nofollow" href="{$product.remove_from_cart_url}" data-link-action="remove-from-cart">
        <i class="fa fa-trash fa-lg"></i>
    </a>
</div>

{if $product.customizations}
    <div class="customizations">
        <ul>
            {foreach from=$product.customizations item="customization"}
                <li>
                    <span class="product-quantity">{$customization.quantity}</span>
                    <a href="{$customization.remove_from_cart_url}" class="remove-from-cart" rel="nofollow">{l s='Remove' d="Shop.Theme.Actions"}</a>
                    <ul>
                        {foreach from=$customization.fields item="field"}
                            <li>
                                <label>{$field.label}</label>
                                {if $field.type == 'text'}
                                    <span>{$field.text}</span>
                                {else if $field.type == 'image'}
                                    <img src="{$field.image.small.url}">
                                {/if}
                            </li>
                        {/foreach}
                    </ul>
                </li>
            {/foreach}
        </ul>
    </div>
{/if}
