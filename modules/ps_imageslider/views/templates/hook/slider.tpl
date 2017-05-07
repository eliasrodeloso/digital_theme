
<div class="col-sm-12 col-md-12">
  {if $homeslider.slides}
    <div id="carouselHome" class="carousel slide hidden-sm-down" data-interval="{$homeslider.speed}" data-wrap="{(string)$homeslider.wrap}" data-pause="{$homeslider.pause}" >
      <div role="listbox" class="carousel-inner">
        {foreach from=$homeslider.slides item=slide name='homeslider'}
          <figure class="carousel-item {if $smarty.foreach.homeslider.first}active{/if}">
            <img src="{$slide.image_url}" alt="{$slide.legend|escape}" class="d-block img-fluid dt-width-max">
            {if $slide.title || $slide.description}
              <figcaption class="carousel-caption d-none d-md-block">
                <h1 class="dt-delay-1" data-animation="animated fadeIn">{$slide.title}</h1>
                {$slide.description nofilter}
                <a data-animation="animated fadeIn" href="{$slide.url}" class="btn btn-outline-primary dt-upper dt-delay-3">
                  {l s='Buy now >>' d='Shop.Theme.Actions'}
                </a>
              </figcaption>
            {/if}
          </figure>
        {/foreach}
      </div>
      <ol class="carousel-indicators">
        {foreach from=$homeslider.slides item=slide name='homeslider'}
          <li data-target="#carouselHome" data-slide-to="{$smarty.foreach.homeslider.index}"></li>
        {/foreach}
      </ol>
      <a class="carousel-control-prev" href="#carouselHome" role="button" data-slide="prev">
        <span class="hidden-sm-down" aria-hidden="true">
          <i class="material-icons md-36">&#xE5CB;</i>
        </span>
        <span class="sr-only">Anterior</span>
      </a>
      <a class="carousel-control-next" href="#carouselHome" role="button" data-slide="next">
        <span class="hidden-sm-down" aria-hidden="true">
          <i class="material-icons md-36">&#xE5CC;</i>
        </span>
        <span class="sr-only">Siguiente</span>
      </a>
    </div>
  {/if}
</div>
