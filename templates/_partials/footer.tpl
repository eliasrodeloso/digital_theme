
<div class="row">
  <div class="col-sm-12 col-md-9">
    <div class="row no-gutters">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}  
    </div>
  </div>
  
  <div class="col-sm-12 col-md-3 footer-right">
    {hook h='displayFooterRight'}
    {hook h='displayBottomFooter'}
  </div>

  <div class="col-sm-12 col-md-12 footer-after">
    {block name='hook_footer_after'}
      {hook h='displayFooterAfter'}
    {/block}
    <p class="text-center">
      {block name='copyright_link'}
        <a class="_blank" href="http://www.prestashop.com" target="_blank">
          {l s='%copyright% %year% - Theme developed by %brand%'
          sprintf=['%brand%' => 'Elias Rodelo™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
        </a>
      {/block}
    </p>
    
  </div>
</div>

