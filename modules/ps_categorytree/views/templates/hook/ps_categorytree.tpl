{*
* 2007-2016 PrestaShop
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
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{function name="categories" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      {foreach from=$nodes item=node}
        {if $depth === 0}
          <a href="{$node.link}" data-depth="{$depth}">{$node.name}</a>
          {if $node.children}
            <span class="tree-collapsibles">
              <i class="mdi mdi-chevron-down"></i>
              <i class="mdi mdi-chevron-up"></i>
            </span>
            <div class="" id="collapsibleTree{$node.id}" >
              {categories nodes=$node.children depth=$depth+1}
            </div>  
          {/if}
        {else}
          <ul data-depth="{$depth}">
            <li>
              <a href="{$node.link}" data-depth="{$depth}">{$node.name}</a>
              {if $node.children}
                <span class="tree-collapsibles">
                  <i class="mdi mdi-chevron-down"></i>
                  <i class="mdi mdi-chevron-up"></i>
                </span>
                <div class="" id="collapsibleTree{$node.id}" >
                  {categories nodes=$node.children depth=$depth+1}
                </div>  
              {/if}
            </li>
          </ul>
        {/if}
      {/foreach}
    {/if}
  {/strip}
{/function}

<div class="category-tree">
  <a class="h4 d-block" href="{$categories.link nofilter}">{$categories.name}</a>
  <div class="tree">
    {categories nodes=$categories.children}
  </div>
</div>
