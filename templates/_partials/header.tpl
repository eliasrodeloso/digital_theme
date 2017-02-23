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

<nav class="navbar navbar-toggleable-md">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
  </button>
  {block name='header_logo'}
    <a class="navbar-brand" href="{$urls.base_url}" title="{$shop.name}">
      <img src="{$shop.logo}" alt="{$shop.name}">
    </a>
  {/block}

  {block name='header_top'}
    <div class="header-top">
      {hook h='displayTop'}
    </div>
    {hook h='displayNavFullWidth'}

  {/block}
</nav>

