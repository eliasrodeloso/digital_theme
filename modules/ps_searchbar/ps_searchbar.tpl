<div class="hidden-sm-down col-9 row no-gutters" id="search_widget" data-search-controller-url="{$search_controller_url}">
  <form class="form-inline col-12 row no-gutters" id="dt-search-bar" method="get" action="{$search_controller_url}">
    <div class="dt-form-group row col-12 row no-gutters">
      <input type="hidden" name="controller" value="search">
      <i class="material-icons md-24 col-1  d-flex justify-content-around align-items-center">search</i>
      <input class="form-control col-9" placeholder="Encuentra lo que necesitas" type="text" name="s" value="{$search_string}">
      <button id="dt-search-button" type="submit" class="justify-content-around col-2">
        {l s='Search' d='Modules.EmailSubscription.Shop'}
      </button>
    </div>
  </form>
</div>