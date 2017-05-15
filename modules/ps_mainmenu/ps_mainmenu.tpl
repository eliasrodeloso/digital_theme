{function name="menu" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      {if $depth == 0}
        <ul data-depth="{$depth}" class="nav nav-pills flex-column col-3">
          {foreach from=$nodes item=node name=main-menu}
            <li class="{$node.type} nav-item">
              <a href="{$node.url}" class="nav-link {if $node.current}active{/if}">{$node.label}</a>
            </li>
          {/foreach}
        </ul>
      {else}
        <div class="col-9 subcategories">
          <ul data-depth="{$depth}">
            <li class="{$node.type}">
              <a href="{$node.url}" class=" nav-link" {if $node.open_in_new_window} target="_blank" {/if}>{$node.label}</a>
            </li>
          </ul>
        </div>
      {/if}
      
    {/if}
  {/strip}
{/function}

<div class="menu">
    {menu nodes=$menu.children}
</div>

{*{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
  {if $nodes|count}
    <ul {if $depth == 0}id="top-menu"{/if} data-depth="{$depth}">
      {foreach from=$nodes item=node}
        <li class="{$node.type}{if $node.current} current {/if}" id="{$node.page_identifier}">
        {assign var=_counter value=$_counter+1}
          <a class="{if $depth >= 0}dropdown-item{/if}{if $depth === 1} dropdown-toggle{/if}" href="{$node.url}" data-depth="{$depth}" {if $node.open_in_new_window} target="_blank" {/if}>
            {if $node.children|count}
              {* Cannot use page identifier as we can have the same page several times *}
              {*{assign var=_expand_id value=10|mt_rand:100000}
              <span>
                <span data-target="#top_sub_menu_{$_expand_id}" data-toggle="collapse" class="navbar-toggler collapse-icons">
                  <i class="material-icons add">&#xE313;</i>
                  <i class="material-icons remove">&#xE316;</i>
                </span>
              </span>
            {/if}
            {$node.label}
          </a>
          {if $node.children|count}
            <div {if $depth === 0} {else} {/if} id="top_sub_menu_{$_expand_id}">
              {menu nodes=$node.children depth=$node.depth parent=$node}
            </div>
          {/if}
        </li>
      {/foreach}
    </ul>
  {/if}
{/function}

<div id="_desktop_top_menu">
  {menu nodes=$menu.children}
<div class="clearfix"></div>*}
