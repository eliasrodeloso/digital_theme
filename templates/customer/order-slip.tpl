{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Credit slips'}
{/block}

{block name='page_content'}
  <h2>{l s='Credit slips you have received after canceled orders'}.</h2>

  {block name='credit_slip_table'}
    {if $credit_slips}
      <table id="credit-slips">
        <thead>
          <tr>
            <th>{l s='Credit slip'}</th>
            <th>{l s='Order'}</th>
            <th>{l s='Date issued'}</th>
            <th>{l s='View credit slip'}</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$credit_slips item=slip}
            <tr>
              <td>{$slip.credit_slip_number}</td>
              <td><a href="{$slip.order_url_details}" data-link-action="view-order-details">{$slip.order_reference}</a></td>
              <td>{$slip.credit_slip_date}</td>
              <td><a href="{$slip.url}">{l s='PDF'}</a></td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    {/if}
  {/block}


{/block}
