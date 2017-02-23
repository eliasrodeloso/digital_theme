<div class="user-info col-xs-12 col-sm-5 col-md-5">
  {if $logged}
    <ul class="d-flex flex-row justify-content-end">
      <li>
        <a class="dt-nav-link" href="{$logout_url}" rel="nofollow">
          <i class="fa fa-sign-out fa-lg" aria-hidden="true"></i>
          <span class="hidden-sm-down">{l s='Sign out' d='Shop.Theme.Actions'}</span>
        </a>
      </li>
      <li id="dt-last-one">
        <a class="dt-nav-link" href="{$my_account_url}" title="{l s='View my customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow">
          <i class="fa fa-user fa-lg" aria-hidden="true"></i>
          <span class="hidden-sm-down">{$customerName}</span>
        </a>
      </li>
    </ul>
  {else}
    <ul>
      <li id="dt-last-one">
        <a class="dt-nav-link" href="{$my_account_url}" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow">
          <i class="fa fa-sign-in fa-lg" aria-hidden="true"></i>
          <span class="hidden-sm-down">{l s='Sign in' d='Shop.Theme.Actions'}</span>
        </a>
      </li>
    </ul>
  {/if}
</div>