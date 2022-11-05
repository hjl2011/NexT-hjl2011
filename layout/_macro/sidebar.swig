{% macro render(display_toc) %}
  <div class="toggle sidebar-toggle">
    <span class="toggle-line toggle-line-first"></span>
    <span class="toggle-line toggle-line-middle"></span>
    <span class="toggle-line toggle-line-last"></span>
  </div>

  <aside class="sidebar">
    <div class="sidebar-inner">

      {%- set display_toc = page.toc.enable and display_toc %}
      {%- if display_toc %}
        {%- set toc = toc(page.content, { class: "nav", list_number: page.toc.number, max_depth: page.toc.max_depth }) %}
        {%- set display_toc = toc.length > 1 and display_toc %}
      {%- endif %}

      <ul class="sidebar-nav motion-element">
        <li class="sidebar-nav-toc">
          <!-- {{ __('sidebar.toc') }} -->
          文章信息
        </li>
        <li class="sidebar-nav-overview">
          {{ __('sidebar.overview') }}
        </li>
      </ul>

      <!--noindex-->

      <div class="post-toc-wrap sidebar-panel">
        {%- if display_toc %}
          文章目录
          <div class="post-toc motion-element">{{ toc }}</div>
        {%- endif %}
        {% if page.type == "prob" %}
          题目信息
          <div style="text-align: left;font-size: .85em;">
            {% if page.probinfo.id %}
              题目编号&nbsp;&nbsp;{{ page.probinfo.id }}<br>
            {% endif %}
            {% if page.probinfo.name %}
              题目名称&nbsp;&nbsp;{{ page.probinfo.name }}<br>
            {% endif %}
            {% if page.probinfo.link %}
              题目链接&nbsp;&nbsp;<a href="{{ page.probinfo.link }}">Link</a><br>
            {% endif %}
            {% if page.probinfo.difficultly %}
              题目难度&nbsp;&nbsp;
              {% if page.probinfo.difficultly.luogu == '0' %}
                <span class="lg-d lg-d-0">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '1' %}
                <span class="lg-d lg-d-1">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '2' %}
                <span class="lg-d lg-d-2">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '3' %}
                <span class="lg-d lg-d-3">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '4' %}
                <span class="lg-d lg-d-4">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '5' %}
                <span class="lg-d lg-d-5">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '6' %}
                <span class="lg-d lg-d-6">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
              {% if page.probinfo.difficultly.luogu == '7' %}
                <span class="lg-d lg-d-7">{{ page.probinfo.difficultly.text }}</span>
              {% endif %}
            {% endif %}
          </div>
        {% endif %}
      </div>
      <!--/noindex-->

      <div class="site-overview-wrap sidebar-panel">
        {{ partial('_partials/sidebar/site-overview.swig', {}, {cache: theme.cache.enable}) }}

        {{- next_inject('sidebar') }}
      </div>

      {%- if theme.back2top.enable and theme.back2top.sidebar %}
        <div class="back-to-top motion-element">
          <i class="fa fa-arrow-up"></i>
          <span>0%</span>
        </div>
      {%- endif %}

    </div>
  </aside>
  <div id="sidebar-dimmer"></div>
{% endmacro %}
