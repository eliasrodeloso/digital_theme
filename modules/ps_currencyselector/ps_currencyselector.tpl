
<div class="currency-selector">
  <div class="dropdown">
    <a 
      id="dropdownCurrency"
      href="#" 
      class="btn btn-secondary dropdown-toggle"
      data-toggle="dropdown"
      aria-haspopup="true"
      aria-expanded="flase"
    >
      <span>{$current_currency.iso_code}</span>
    </a>
    <div class="dropdown-menu dropdown-menu-right animated slideInUp" aria-labelledby="dropdowndCurrency">
      {foreach from=$currencies item=currency}
        <a 
          class="dropdown-item {if $currency.current} active {/if}"
          href="{$currency.url}">{$currency.name|capitalize} ({$currency.iso_code})
        </a>
      {/foreach}
    </div>
  </div>
  
</div>
