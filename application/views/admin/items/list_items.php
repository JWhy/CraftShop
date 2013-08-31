<?php foreach($items as $item): ?>
<div class="tile itemmanager_itembox span1">
  <div class="tile-title"><?php echo($item['name']); ?></div>
  <img src="<?php printf($img_url, $item['item_id'], $item['item_damage']); ?>" />
</div>
<?php endforeach; ?> 
