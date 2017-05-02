<div class="product-variants divide-bottom mb-2">

  {foreach from=$groups key=id_attribute_group item=group}
    <div class="form-group row">
      <label class="col-12 my-2 px-2" for="group_{$id_attribute_group}">{$group.name}</label>

      {if $group.group_type == 'select'}

        {block name='product_variants_select'}
          <select data-product-attribute="{$id_attribute_group}" name="group[$id_attribute_group}]" id="group_{$id_attribute_group}" class="col-6 custom-select">
            {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <option value="{$id_attribute}" title="{$group_attribute.name}" {if $group_attribute.selected}selected{/if}>
                {$group_attribute.name}
              </option>
            {/foreach}
          </select>
        {/block}

      {else if $group.group_type == 'color'}

        {block name='product_variants_color'}
          <ul id="group_{$id_attribute_group}">
            {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <li class="input-container">
                <input class="input-color" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" {if $group_attribute.selected} checked="checked"{/if}>
                <span {if $group_attribute.html_color_code} style="background-color: {$group_attribute.html_color_code}" {/if} {if $group_attribute.texture} style="background-image: url({$group_attribute.texture})" {/if}>
                </span>
              </li>
            {/foreach}
          </ul>
        {/block}

      {else if $group.group_type == 'radio'}

        {block name='product_variants_radio'}
          <ul id="group_{$id_attribute_group}">
            {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <li class="input-container">
                <input type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" {if $group_attribute.selected} checked="checked"{/if}>
                <span>{$group_attribute.name}</span>
              </li>
            {/foreach}
          </ul>
        {/block}

      {/if}
    </div>
    
    

  {/foreach}

</div>
