{function name="menu" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      <ul data-depth="{$depth}" {if $depth==0}class="dt-top-menu navbar-nav flex-row"{/if}>
        {foreach from=$nodes item=node}
          <li class="dt-root-category nav-item">
            <a href="#" class="{if $depth >= 0}dropdown-item{/if}{if $depth === 1} dropdown-toggle{/if}" href="{$node.url}" data-depth="{$depth}">
              {$node.label}
            </a>
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

<nav id="dt-main-menu" class="navbar navbar-collapse dt-navbar justify-content-around" >
  {menu nodes=$menu.children}
</nav>

