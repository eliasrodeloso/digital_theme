<div class="col-xs-4 col-md-4">
  <ul id="contact-link">
    <li>
      {if $contact_infos.phone}
        {* First tag [1][/1] is for a HTML tag. *}
        {l
          s='Call us: [1]%phone%[/1]'
          sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%phone%' => $contact_infos.phone
          ]
          d='Modules.ContactInfo.Shop'
        }
      {/if}
      <a class="dt-nav-link" href="{$urls.pages.contact}">{l s='Contact us' d='Modules.ContactInfo.Shop'}</a>
    </li>
  </ul>
</div>
