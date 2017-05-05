
{block name='social_sharing'}
  {if $social_share_links}
    <div class="d-flex align-items-center" id="shareButtons">
      <span class="h6 my-0 mr-2">{l s='Share on: ' d='Shop.Theme.Catalog'}</span>
        <ul>
          {foreach from=$social_share_links item='social_share_link'}
            <li class="{$social_share_link.class}"><a href="{$social_share_link.url}">{$social_share_link.label}</a></li>
          {/foreach}  
        </ul>
    </div>
  {/if}
{/block}
