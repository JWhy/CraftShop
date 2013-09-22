<?php 
$i_row = 0;
if(sizeof($items) == 0): ?>
  <p>There are no items in the database yet. You can update the database in the 
  <?php echo anchor('admin', 'Admin Panel'); ?>.
<?php else: foreach($items as $num=>$item): ?> 
  <?php $itemid = $item->item_id . '-' . $item->item_damage; ?> 
  <?php if($i_row % 6 == 0): ?><div class="row"><?php endif;?> 
    <div class="tile itemmanager_itembox span1">
      <a href="<?php echo site_url('items/view/' . $item->item_id . '/' . $item->item_damage); ?>">
        <img src="<?php echo base_url(sprintf($img_url, $item->item_id, $item->item_damage)); ?>" />
      </a>
    </div>
  <?php if($i_row % 6 == 5 || $num == (sizeof($items) - 1)): ?></div><?php endif;?> 
<?php $i_row++; endforeach; endif; ?> 
