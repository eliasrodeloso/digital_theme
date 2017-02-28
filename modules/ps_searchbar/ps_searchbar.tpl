<div class="hidden-xs-down col-sm-8 col-md-8" id="search_widget" data-search-controller-url="{$search_controller_url}">
	<form class="form-inline" id="dt-search-bar" method="get" action="{$search_controller_url}">
		<input type="hidden" name="controller" value="search">
    <div class="dt-input-group">
      <input class="dt-form-control" placeholder="Encuentra lo que necesitas" type="text" name="s" value="{$search_string}">
      <button id="dt-search-button" type="submit">
        <i class="fa fa-search fa-lg" aria-hidden="true"></i>
      </button>
    </div>
		
		
	</form>
</div>