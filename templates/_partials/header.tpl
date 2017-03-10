{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <div class="dt-pre-header d-flex justify-content-between align-items-center" role="navigation">
    {hook h='displayNav1'}    
    {hook h='displayNav2'}
  </div>
{/block}

<div class="row no-gutters">
  <div class="col-xs-12 col-sm-12 col-md-12">
    <div class="container-fluid">
      <nav class="navbar navbar-toggleable-md">
        {block name='header_logo'}
          <a class="navbar-brand col-xs-12 col-sm-2 col-md-2" href="{$urls.base_url}" title="{$shop.name}">
            <img src="{$shop.logo}" alt="{$shop.name}">
          </a>
        {/block}
        {block name='header_top'}
          <div class="header-top col-xs-12 col-sm-10 col-md-10">
            <div class="row justify-content-around align-items-center">
              {hook h='displayTop'}
            </div>
          </div>
        {/block}   
      </nav>
    </div>
  </div>
</div>

{block name="dt-main-menu"}
  {hook h='displayMenu'}
{/block}


