<div class="col-sm-4 col-md-4 d-flex align-items-center">
  {if $contact_infos.phone}
    <i class="material-icons md-24 mr-2">help_outline</i>
    {* First tag [1][/1] is for a HTML tag. *}
    {l
      s='Talk to a human: [1]%phone%[/1]'
      sprintf=[
        '[1]' => '<span>',
        '[/1]' => '</span>',
        '%phone%' => $contact_infos.phone
      ]
      d='Modules.ContactInfo.Shop'
    }
  {/if}
</div>
