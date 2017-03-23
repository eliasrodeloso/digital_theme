<nav  
  data-depth="{$breadcrumb.count}" 
  {if $breadcrumb.count == 1}
    class="d-none"
  {/if}
>
  <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
    {foreach from=$breadcrumb.links item=path name=breadcrumb}
      {block name='breadcrumb_item'}
        <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
          <a itemprop="item" href="{$path.url}">
            <span itemprop="name">{$path.title}</span>
          </a>
          <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
        </li>
      {/block}
    {/foreach}
  </ol>
</nav>
