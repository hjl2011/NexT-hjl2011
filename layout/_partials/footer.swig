<span style="float: right;text-align:right !important;">
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
Total <span id="busuanzi_value_site_pv">?</span> views.<br>
</span>

<span style="text-align:left !important;">
{%- if theme.footer.beian.enable %}
  <div class="beian">
    {{- next_url('https://beian.miit.gov.cn', theme.footer.beian.icp + ' ') }}
    {%- if theme.footer.beian.gongan_icon_url %}
      <img src="{{ url_for(theme.footer.beian.gongan_icon_url) }}" style="display: inline-block;">
    {%- endif %}
    {%- if theme.footer.beian.gongan_id and theme.footer.beian.gongan_num %}
      {{- next_url('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=' + theme.footer.beian.gongan_id, theme.footer.beian.gongan_num + ' ') }}
    {%- endif %}
  </div>
{%- endif %}

<div class="copyright">
  {% set copyright_year = date(null, 'YYYY') %}
  &copy; {% if theme.footer.since and theme.footer.since != copyright_year %}{{ theme.footer.since }} – {% endif %}
  <span itemprop="copyrightYear">{{ copyright_year }}</span>
  <span class="with-love">
    <i class="{{ theme.footer.icon.name }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright or author }}</span>

  {%- if config.symbols_count_time.total_symbols %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-chart-area"></i>
    </span>
    {%- if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.count_total') + __('symbol.colon') }}</span>
    {%- endif %}
    <span title="{{ __('symbols_count_time.count_total') }}">{{ symbolsCountTotal(site) }}</span>
  {%- endif %}

  {%- if config.symbols_count_time.total_time %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-coffee"></i>
    </span>
    {%- if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.time_total') }} &asymp;</span>
    {%- endif %}
    <span title="{{ __('symbols_count_time.time_total') }}">{{ symbolsTimeTotal(site, config.symbols_count_time.awl, config.symbols_count_time.wpm, __('symbols_count_time.time_minutes')) }}</span>
  {%- endif %}
</div>

{%- if theme.footer.powered %}<!--
  <div class="powered-by" id="powered-by">
    {%- set next_site = 'https://theme-next.org' %}
    {%- if theme.scheme !== 'Gemini' %}
      {%- set next_site = 'https://' + theme.scheme | lower + '.theme-next.org' %}
    {%- endif %}
    {{- __('footer.powered', next_url('https://hexo.io', 'Hexo', {class: 'theme-link'}) + ' & ' + next_url(next_site, 'NexT.' + theme.scheme, {class: 'theme-link'})) }}
  </div>-->
  <div class="powered-by" id="powered-by" style="text-align:left !important;">
    Theme <a href="https://pisces.theme-next.org/">NexT.Pisces</a><a href="https://github.com/hjl2011/NexT-hjl2011"> (Modified by hjl2011)</a> | Powered by <a href="https://hexo.io">Hexo</a>
  </div>
{%- endif %}

{%- if theme.add_this_id %}
  <div class="addthis_inline_share_toolbox">
    <script src="//s7.addthis.com/js/300/addthis_widget.js#pubid={{ theme.add_this_id }}" async="async"></script>
  </div>
{%- endif %}

<div id="runtime"></div>
<script>
  function BlogRunTime() {
    window.setTimeout("BlogRunTime()",1000);
    var seconds = 1000;
    var minutes = seconds * 60;
    var hours = minutes * 60;
    var days = hours * 24;
    var years = days * 365;
    var today = new Date();
    var todayYear = today.getFullYear();
    var todayMonth = today.getMonth() + 1;
    var todayDate = today.getDate();
    var todayHour = today.getHours();
    var todayMinute = today.getMinutes();
    var todaySecond = today.getSeconds();
    var t1 = Date.UTC(2022,07,18,18,20,51);
    var t2 = Date.UTC(todayYear,todayMonth,todayDate,todayHour,todayMinute,todaySecond);
    var diff = t2 - t1;
    var diffYears = Math.floor(diff / years);
    var diffDays = Math.floor((diff / days) - diffYears * 365);
    var diffHours = Math.floor((diff - (diffYears * 365 + diffDays) * days) / hours);
    var diffMinutes = Math.floor((diff - (diffYears * 365 + diffDays) * days - diffHours * hours) / minutes);
    var diffSeconds = Math.floor((diff - (diffYears * 365 + diffDays) * days - diffHours * hours - diffMinutes * minutes) / seconds);
    var HTMLstring = "本博客已运行 ";
    if(diffYears) HTMLstring += diffYears + " 年 " + diffDays + " 天 " + diffHours + " 时 " + diffMinutes + " 分 " + diffSeconds + " 秒";
    else if(diffDays) HTMLstring += diffDays + " 天 " + diffHours + " 时 " + diffMinutes + " 分 " + diffSeconds + " 秒";
    else if(diffHours) HTMLstring += diffHours + " 时 " + diffMinutes + " 分 " + diffSeconds + " 秒";
    else if(diffMinutes) HTMLstring += diffMinutes + " 分 " + diffSeconds + " 秒";
    else HTMLstring += diffSeconds + " 秒";
    document.getElementById("runtime").innerHTML = HTMLstring;
  }
  BlogRunTime();
</script>
</span>