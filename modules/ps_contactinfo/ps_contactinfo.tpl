
<div class="block-contact">
	<p class="vcard text-center">
    <i class="material-icons md-sm mr-1">location_on</i>
    <img src="{$shop.logo}" alt="{$shop.name}" class="d-none photo">
    <span class="fn org">{$contact_infos.company}</span> - 
    <span class="adr">
        <span class="street-name">
        {$contact_infos.address.address1} - {$contact_infos.address.address2}</span>
        <span class="locality">{$contact_infos.address.city}</span>, <span class="region">{$contact_infos.address.state}</span> - <span class="country-name">{$contact_infos.address.country}</span>
    </span> - <span class="tel">
      <i class="material-icons md-sm mr-1">call</i>{$contact_infos.fax} - {$contact_infos.phone}
    </span> - <a href="mailto:{$contact_infos.email}" class="email">
      <i class="material-icons md-sm mr-1">mail_outline</i>
      <span class="my-2">{$contact_infos.email}</span>
    </a>
    
  </p>
</div>
