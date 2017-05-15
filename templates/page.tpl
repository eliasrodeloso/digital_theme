{extends file=$layout}

{block name='content'}

  <section id="main">

    

    {block name='page_content_container'}
      <section id="content" class="page-content">
        {block name='page_content'}
          <!-- Page content -->
        {/block}
      </section>
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}

  </section>

{/block}
