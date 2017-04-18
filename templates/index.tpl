{extends file='page.tpl'}

{block name='page_content'}
  {block name='hook_home'}
  
    {* These lines are the default homepage, feel free to modify if you want to show other stuff *}
    <div id="hookDisplayTopHome" class="row no-gutters">
      {hook h='displayTopHome'}
    </div>


    <div id="displayCenterHome">
      {hook h='displayCenterHome'}
    </div>

    
    <div id="displayBottomHome">
      {hook h='displayBottomHome'}
    </div>


    {* In case you want to use the 'displayHome' hook, you should uncomment the next line *}
    {* {$HOOK_HOME nofilter} *}

  {/block}  
{/block}
