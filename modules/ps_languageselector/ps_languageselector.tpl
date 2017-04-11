
<div class="language-selector ml-auto">
  <div class="dropdown">
    <a 
      id="dropdownLang"
      href="#" 
      class="btn btn-secondary dropdown-toggle"
      data-toggle="dropdown"
      aria-haspopup="true"
      aria-expanded="flase"
    >
      <span>{$current_language.name_simple}</span>
    </a>
    <div class="dropdown-menu dropdown-menu-right animated slideInUp" aria-labelledby="dropdownLang">
      {foreach from=$languages item=language}
        <a 
          class="dropdown-item {if $language.id_lang == $current_language.id_lang} active {/if}"
          href="{$link->getLanguageLink($language.id_lang)}">{$language.name_simple}
        </a>
      {/foreach}
    </div>
  </div>
</div>
