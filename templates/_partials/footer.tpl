
<div class="row no-gutters">
  {block name='hook_footer'}
    {hook h='displayFooter'}
  {/block}

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

