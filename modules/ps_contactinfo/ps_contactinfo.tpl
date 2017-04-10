{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div class="block-contact">
	<h6 class="text-uppercase">{l s='Store information' d='Modules.ContactInfo.Shop'}</h6>
  <div class="vcard">
    <div class="fn org">{$contact_infos.company}</div>
    <img src="{$shop.logo}" alt="{$shop.name}" class="d-none photo">
    <div class="tel">
      {$contact_infos.fax} - {$contact_infos.phone}
    </div>
    <a href="mailto:{$contact_infos.email}" class="email">{$contact_infos.email}</a>
    <div class="adr">
      <div>
        <span class="street-name">{$contact_infos.address.address1} {$contact_infos.address.address2}</span>
        <span class="postal-code">{$contact_infos.address.postcode}</span>
      </div>
      <div>
        <span class="locality">{$contact_infos.address.city}</span>, <span class="region">{$contact_infos.address.state}</span> - <span class="country-name">{$contact_infos.address.country}</span>
      </div>
    </div>
  </div>
</div>
