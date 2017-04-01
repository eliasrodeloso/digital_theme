{extends file='page.tpl'}

{block name='page_content'}
  {block name='hook_home'}
    <div id="hookDisplayTopHome" class="row no-gutters">
      {hook h='displayTopHome'}
    </div>
    <div id="displayCenterHome" class="row no-gutters">
      {hook h='displayCenterHome'}
    </div>
    {$HOOK_HOME nofilter}
  {/block}  
{/block}
