<img class="viewitem_thumb" src="<?php echo base_url(sprintf($img_url, $item->item_id, $item->item_damage)); ?>" />
<p>Item ID: <?php echo($item->item_id); ?></p>
<p>Data value: <?php echo($item->item_damage); ?></p>
<br>
<p>Available offers:</p>
<?php if(sizeof($offers) == 0): ?><div class="alert alert-danger">
    There are currently no offers for this item.
</div><?php else:?>

<?php endif;?>
