{%- if theme.rating.enable %}
  <div class="post-widgets">
    <div class="wp_rating">
      <div id="wpac-rating"></div>
    </div>
  </div>
{%- endif %}

<!--

<blockquote id="copyright">
  <div><strong>{{ post.title }}</strong></div>
  <a style="color: #1070dc;text-decoration-line: underline;font-family: Consolas;font-size: .95em;border-bottom: none !important;" href="{{ full_url_for(post.path) }}">{{ full_url_for(post.path) }}</a>
  <span style="display: flex;">
    <div>
      <div style="font-size: .95em;">本文作者</div>
      <div style="color: #e67e22;">hjl2011</div>
    </div>
    {% if post.type == "prob" %}
      <div style="margin-left: 1.5em;">
        <div style="font-size: .95em;">题目来源</div>
        <a style="color: #4370af;border-bottom: none !important;" href="{{ post.probinfo.link }}"> {{ post.probinfo.name }}</a>
      </div>
    {% endif %}
  </span>
  <div style="font-size: .95em;">请勿转载本文内容。</div>
</blockquote>

-->