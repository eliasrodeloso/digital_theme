<nav  
  data-depth="{$breadcrumb.count}" 
  {if $breadcrumb.count == 1}
    class="d-none"
  {/if}
        class="container"
>
  <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
    {foreach from=$breadcrumb.links item=path name=breadcrumb}
      {block name='breadcrumb_item'}
        {if $smarty.foreach.breadcrumb.first}
          <li class="breadcrumb-item d-flex justify-content-around">
            <a itemprop="item" href="{$path.url}" class="d-flex align-items-center">
              <span itemprop="name" class="d-none">{$path.title}</span>
              <i class="material-icons">home</i>
              <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
            </a>
          </li>
        {else}
          <li class="breadcrumb-item d-flex justify-content-around" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
            <a itemprop="item" href="{$path.url}">
              <span itemprop="name">{$path.title}</span>
            </a>
            <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
          </li>
        {/if}
        
      {/block}
    {/foreach}
  </ol>
</nav>
