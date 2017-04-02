
{if $elements}
  <div id="blockReassurance" class="row no-gutters my-5 align-items-center">
    {foreach from=$elements item=element}
      <div class="col-sm-12 col-md-4">
        <div class="block-text d-flex justify-contet-around align-items-center">
          <div class="side-img">
            <img src="{$element.image}" alt="{$element.text|escape:'quotes'}" /> 
          </div>
          <span>{$element.text nofilter}</span>
        </div>
        
      </div>
      
    {/foreach}
  </div>
{/if}
