

{foreach $linkBlocks as $linkBlock}
  <div class="linklist col-sm-12 col-md-3">
    <h3>{$linkBlock.title}</h3>
    <ul>
      {foreach $linkBlock.links as $link}
        <li>
          <a
            id="{$link.id}-{$linkBlock.id}"
            class="{$link.class}"
            href="{$link.url}"
            title="{$link.description}"
          >
            {$link.title}
          </a>
        </li>
      {/foreach}
    </ul>
  </div>
{/foreach}



