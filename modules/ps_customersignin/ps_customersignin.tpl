<div class="user-info ml-auto" >
  <div class="dropdown " id="dropdownCustomer">
    <a href="#" id="dropdownForCustomer" class="hidden-sm-down btn dropdown-toggle dt-btn-dropdown-header" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="material-icons md-36 " aria-hidden="true">&#xE853;</i>
    </a>
    <a href="#" id="dropdownForCustomer" class="hidden-md-up btn btn-sm dropdown-toggle dt-btn-dropdown-header" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="material-icons md-24 " aria-hidden="true">&#xE853;</i>
    </a>
    <div class="dropdown-menu dropdown-menu-right animated slideInUp" aria-labelledby="dropdownForCustomer">
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