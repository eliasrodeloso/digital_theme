
{if $elements}
  <section id="blockReassurance" class="my-5">
    <div class="row justify-content-between">
      {foreach from=$elements item=element name=reasssuranceFor}
        <div class="col-sm-12 col-md-4">
          <div class="block-text block-{$smarty.foreach.reasssuranceFor.iteration} d-flex justify-content-around">
            <div class="d-flex align-items-center">
              <span class="mr-3">
                <img src="{$element.image}" alt="{$element.text|escape:'quotes'}" /> 
              </span>
              <h5 class="text-uppercase my-0">{$element.text}</h5>
            </div>
          </div>
        </div>
      {/foreach}
    </div>
  </section>
{/if}
