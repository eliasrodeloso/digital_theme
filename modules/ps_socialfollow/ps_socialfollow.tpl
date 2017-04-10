
{block name='ps_social_follow'}
  <div class="social-follow">
    <h6>{l s='Follow us' d='Modules.SocialFollow.Shop'}</h6>
    <ul>
      {foreach from=$social_links item='social_link'}
        <li class="{$social_link.class}"><a href="{$social_link.url}">{$social_link.label}</a></li>
      {/foreach}
    </ul>
  </div>
{/block}
