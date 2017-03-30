{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

<div class="row no-gutters d-none">
  <div class="">
    <div class="container-fluid">
      <nav class="navbar navbar-toggleable-md">
        
        {block name='header_top'}
          <div class="header-top">
            <div class="row justify-content-around align-items-center">
              {hook h='displayTop'}
            </div>
          </div>
        {/block}   
      </nav>
    </div>
  </div>
</div>

{block name='header_nav'}
<nav class="navbar-light dt-navbar fixed-top">
  <div class="row">
    <div class="col-12 hidden-sm-down">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-md-1 col-lg-1">
            <button class="dt-toggler-menu d-flex align-items-center flex-column" type="button" data-toggle="collapse" data-target="#dtMenu" aria-controls="dtMenu" aria-expanded="false" aria-label="Toggle navigation">
              <i class="material-icons md-36">&#xE5D2;</i>
              <span class="dt-navtitle">{l s='Categorías' d='Shop.Theme.Actions'}</span>
            </button>
          </div>
          
          <div class="col-md-2 col-lg-2">
            {block name='header_logo'}
              <a class="navbar-brand" href="{$urls.base_url}" title="{$shop.name}">
                <img src="{$shop.logo}" alt="{$shop.name}">
              </a>
            {/block}
          </div>
          <div class="col-md-9 col-lg-9">
            <div class="d-flex flex-row no-gutters">
              {hook h='displayNav'}
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-12 hidden-md-up">
      <div class="row no-gutters">
        <div class="col-2">
          <button class="dt-toggler-menu d-flex flex-column" type="button" data-toggle="collapse" data-target="#dtMenu" aria-controls="dtMenu" aria-expanded="false" aria-label="Toggle navigation">
            <i class="material-icons md-36">&#xE5D2;</i>
          </button>
        </div>
        
        <div class="col-7">
          {block name='header_logo'}
            <div class="d-flex justify-content-around dt-height align-items-center">
              <a href="{$urls.base_url}" title="{$shop.name}">
                <img src="{$shop.logo}" alt="{$shop.name}">
              </a>
            </div>
          {/block}
        </div>

        <div class="col-3">
          <div class="d-flex flex-row justify-content-end">
            {hook h='displayNav'}
          </div>
        </div>
      </div>
    </div>
  </div>
  
</nav>
{/block}






