<div class="user-info ml-auto">
  <div class="dropdown">
    <a href="#" class="btn dropdown-toggle dt-btn-dropdown-header" id="dropdownCustomer" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="material-icons md-36 hidden-sm-down" aria-hidden="true">&#xE853;</i>
      <i class="material-icons md-24 hidden-md-up" aria-hidden="true">&#xE853;</i>
    </a>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownCustomer">
      {if $logged}
        <h6 class="dropdown-header">{$customerName}</h6>
        <div class="dropdown-divider"></div>
        <a href="{$my_account_url}" class="dropdown-item d-flex" rel="nofollow">
          <i class="material-icons mr-1">&#xE8A6;</i>
          <span>{l s='View my customer account' d='Shop.Theme.CustomerAccount'}</span>
        </a>
        <a href="{$logout_url}" class="dropdown-item d-flex">
          <i class="material-icons mr-1" aria-hidden="true" rel="nofollow">&#xE5CD;</i>
          <span>{l s='Sign out' d='Shop.Theme.Actions'}</span>
        </a>
      {else}
        <a href="{$my_account_url}" class="dropdown-item d-flex" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow">
          <i class="material-icons mr-2" aria-hidden="true">&#xE890;</i>
          <span>{l s='Sign in' d='Shop.Theme.Actions'}</span>
        </a>
      {/if}
    </div>
  </div>
</div>