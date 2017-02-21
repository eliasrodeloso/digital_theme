{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <div class="header-nav navbar navbar-inverse" role="navigation">
    <div class="container">
      <div class="row justify-content-between">
        <div class="col-4 col-sm-4 col-md-4">
          {hook h='displayNav1'}    
        </div>
        <div class="col-3 col-sm-3 col-md-3">
          {hook h='displayNav2'}
        </div>
      </div>
    </div>
    
  </div>
{/block}

<nav class="navbar navbar-toggleable-md">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
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

