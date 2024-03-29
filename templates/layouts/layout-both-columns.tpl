<!doctype html>
<html lang="{$language.locale}">
<head>
  {block name='head'}
    {include file='_partials/head.tpl'}
  {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}">
  
  {block name='hook_after_body_opening_tag'}
    {hook h='displayAfterBodyOpeningTag'}
  {/block}

  <!-- Start page content-->
  <header id="header">
    {block name='header'}
      {include file='_partials/header.tpl'}
    {/block}
  </header>

  <div class="page-wrapper">

    <div id="backdrop" class="dark-backdrop"></div>

    {block name='notifications'}
      {include file='_partials/notifications.tpl'}
    {/block}

    {block name='breadcrumb'}
      {include file='_partials/breadcrumb.tpl'}
    {/block}

    {block name="page_content"}

      {block name='left_column'}
        <div id="left-column">
          {if $page.page_name == 'product'}
            {hook h='displayLeftColumnProduct'}
          {else}
            {hook h="displayLeftColumn"}
          {/if}
        </div>
      {/block}

      {block name='right_column'}
        <div id="right-column">
          {if $page.page_name == 'product'}
            {hook h='displayRightColumnProduct'}
          {else}
            {hook h="displayRightColumn"}
          {/if}
        </div>
      {/block}

      {block name='content_wrapper'}
        <div id="content-wrapper" class="left-column right-column">
          {block name='content'}
            <p>Hello world! This is HTML5 Boilerplate.</p>
          {/block}
        </div>
      {/block}

    {/block}

  </div>

  {block name='hook_footer_before'}
    {hook h='displayFooterBefore'}
  {/block}

  <footer id="footer">
    <div class="container">
      {block name='footer'}
        {include file='_partials/footer.tpl'}
      {/block}
    </div>
  </footer>

  {block name='javascript_bottom'}
    {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
  {/block}

  <!-- End page content -->

  {block name='hook_before_body_closing_tag'}
    {hook h='displayBeforeBodyClosingTag'}
  {/block}
</body>

</html>