
<div class="row no-gutters">
  <div class="col-sm-12 col-md-9">
    <div class="row no-gutters">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}  
    </div>
  </div>
  
  <div class="col-sm-12 col-md-3">
    {hook h='displayFooterRight'}
  </div>

  {block name='hook_footer_after'}
    {hook h='displayFooterAfter'}
  {/block}

  <p class="col-12">
    {block name='copyright_link'}
      <a class="_blank" href="http://www.prestashop.com" target="_blank">
        {l s='%copyright% %year% - Ecommerce software by %prestashop%'
        sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
      </a>
    {/block}
  </p>
</div>

