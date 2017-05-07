{if $product.is_customizable}
  <section class="product-customization mb-auto">
    {if !$configuration.is_catalog}
      <h5 class="mb-2 text-center">{l s='Product customization'}</h5>

      {block name='product_customization_form'}
        <form method="post" action="{$urls.current_url}" enctype="multipart/form-data" class="w-75 mx-auto">
          
            {foreach from=$customizations.fields item="field"}

              <div class="form-group">
                <label for="{$field.input_name}" class="font-weight-bold">{$field.label}</label>
                {if $field.type == 'text'}
                  <textarea {if $field.required} required {/if} name="{$field.input_name}" class="form-control">
                    {$field.text}
                  </textarea>
                  <small class="form-text text-muted">{l s='250 char. max' d='Shop.Forms.Help'}</small>
                  {if $field.text !== ''}
                    <h6>{l s='Your customization:' d='Shop.Theme.Catalog'} <label>{$field.text}</label></h6>
                  {/if}
                {elseif $field.type == 'image'}
                  {if $field.is_customized}
                    <img src="{$field.image.small.url}">
                    <a class="remove-image" href="{$field.remove_image_url}" rel="nofollow">{l s='Remove Image'}</a>
                  {/if}
                {/if}
              </div>
                
                
              </li>
            {/foreach}
          </ul>
          <button name="submitCustomizedData" class="btn btn-primary btn-block text-uppercase">
            <i class="mdi mdi-content-save"></i>
            {l s='Save Customization'}
          </button>
        </form>
      {/block}

    {/if}
  </section>
{/if}
