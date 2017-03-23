<div class="hidden-sm-down col-9 py-2 mt-1" id="search_widget" data-search-controller-url="{$search_controller_url}">
  <div class="dt-width-max m-auto">
    <form class="form-inline" id="dt-search-bar" method="get" action="{$search_controller_url}">
      <input type="hidden" name="controller" value="search">
      <div class="dt-input-group">
        <input class="dt-form-control" placeholder="Encuentra lo que necesitas" type="text" name="s" value="{$search_string}">
        <button id="dt-search-button" type="submit" class="justify-content-around">
          <i class="material-icons md-24">&#xE8B6;</i>
        </button>
      </div>
    </form>
  </div>
</div>