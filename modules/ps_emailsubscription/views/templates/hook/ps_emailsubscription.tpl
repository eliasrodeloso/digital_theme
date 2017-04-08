
<div id="emailFooterSuscription">
  <div class="container">
    <div class="d-flex flex-row dt-email align-items-baseline row">
      <h5 class="col-sm-12 col-md-4">{l s='Subscribe our Newsletter' d='Modules.EmailSubscription.Shop'}</h5>
      <form action="{$urls.pages.index}" method="post" class="col-sm-12 col-md-8 row form-inline" id="formEmail">
        <div class="dt-form-group row">
          <input type="email" name="email" value="{$value}" placeholder="{l s='Your e-mail' d='Modules.EmailSubscription.Shop'}" class="col-10" />
          <input type="submit" value="ok" name="submitNewsletter" class="col-2" />
          <input type="hidden" name="action" value="0" />
        </div>
        
        {if $msg}
          <span class="notification {if $nw_error}notification-error{else}notification-success{/if}">{$msg}</span>
        {/if}
        {if $conditions}
           <span>{$conditions}</span>
        {/if}
        
      </form>
    </div>
  </div>
  
</div>

