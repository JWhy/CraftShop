<?php

echo img(array(
    'src' => 'https://minotar.net/avatar/' . $mcuser['name'] . '/100.png',
    'alt' => $mcuser['name'],
    'style' => 'float: left;'
))?>
<div id="userinfo" style="height: 100px; vertical-align: middle;">
  <div style="margin-left: 1.3em; display: inline-block;">
    <h2 style="margin-bottom: 0.2em;"><?php echo($mcuser['name']); ?></h2>
    <p><span class="fui-plus"></span> Balance: $<?php echo(($mcuser['balance'])? $mcuser['balance'] : "0"); ?></p>
  </div>
</div>
