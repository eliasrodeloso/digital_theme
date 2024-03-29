{extends file='page.tpl'}

{block name='page_title'}
  {l s='Reset your password'}
{/block}

{block name='page_content_container'}

  <section id="content" class="page-content password-form">
    {block name='page_content'}
      <form action="{block name='form_new_password_actionurl'}{$urls.pages.password}{/block}" method="post">

        {block name='form_new_password_form_fields'}
          <section class="form-fields">

            <label>
              <span>{l s='Email address: %email%' d='Shop.Theme.Customeraccount' sprintf=['%email%' => $customer_email|stripslashes]}</span>
            </label>

            <label>
              <span>{l s='New password'}</span>
              <input type="password" data-validate="isPasswd" name="passwd" value="">
            </label>

            <label>
              <span>{l s='Confirmation'}</span>
              <input type="password" data-validate="isPasswd" name="confirmation" value="">
            </label>

          </section>
        {/block}

        {block name='form_new_password_footer'}
          <footer class="form-footer">
            <input type="hidden" name="token" id="token" value="{$customer_token}">
            <input type="hidden" name="id_customer" id="id_customer" value="{$id_customer}">
            <input type="hidden" name="reset_token" id="reset_token" value="{$reset_token}">
            <button type="submit" name="submit">
              {l s='Change Password'}
            </button>
          </footer>
        {/block}

      </form>
    {/block}

  </section>
{/block}

{block name='page_footer'}
  <ul>
    <li><a href="{$urls.pages.authentication}">{l s='Back to Login'}</a></li>
  </ul>
{/block}
