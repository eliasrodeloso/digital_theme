{extends file=$layout}

{block name="page_content"}

  <div class="container">
    <div class="row">

      {block name='left_column'}
        <aside class="col-xs-12 col-md-4">
          {if $page.page_name == 'product'}
            {hook h='displayLeftColumnProduct'}
          {else}
            {hook h="displayLeftColumn"}
          {/if}
        </aside>
      {/block}

      {block name='content_wrapper'}
        <section id="main" class="col-xs-12 col-md-8">

          {block name='product_list_header'}
            <h2 class="h2">{$listing.label}</h2>
          {/block}

          <section id="products">
            {if $listing.products|count}

              {block name='product_list_top'}
                {include file='catalog/_partials/products-top.tpl' listing=$listing}
              {/block}

              {block name='product_list_active_filters'}
                {$listing.rendered_active_filters nofilter}
              {/block}

              {block name='product_list'}
                {include file='catalog/_partials/products.tpl' listing=$listing}
              {/block}

              <div id="js-product-list-bottom">
                {block name='product_list_bottom'}
                  {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
                {/block}
              </div>

            {else}

              {include file='errors/not-found.tpl'}

            {/if}
          </section>

        </section>
      {/block}
    </div>
  </div>
{/block}

