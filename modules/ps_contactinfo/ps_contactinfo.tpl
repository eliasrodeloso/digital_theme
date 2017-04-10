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
	<p class="vcard text-center">
    <span class="fn org mr-2">{$contact_infos.company}</span>
    <img src="{$shop.logo}" alt="{$shop.name}" class="d-none photo">
    <span class="tel mr-2">
      <i class="material-icons md-18 mr-2">call</i>{$contact_infos.fax} - {$contact_infos.phone}
    </span>
    <a href="mailto:{$contact_infos.email}" class="email mr-2">
      <i class="material-icons md-18 mr-2">mail_outline</i>
      <span class="my-2">{$contact_infos.email}</span>
    </a>
    <span class="adr mr-2">
      
        <span class="street-name">
        <i class="material-icons md-18 mr-2">location_on</i>{$contact_infos.address.address1} - {$contact_infos.address.address2}</span>
        <span class="postal-code">ZIP: {$contact_infos.address.postcode}</span>
      
        <span class="locality">{$contact_infos.address.city}</span>, <span class="region">{$contact_infos.address.state}</span> - <span class="country-name">{$contact_infos.address.country}</span>
    </span>
  </p>
</div>
