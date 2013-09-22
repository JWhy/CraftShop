<img class="viewitem_thumb" src="<?php echo base_url(sprintf($img_url, $item->item_id, $item->item_damage)); ?>" />
<p>Item ID: <?php echo($item->item_id); ?></p>
<p>Data value: <?php echo($item->item_damage); ?></p>
<br>
<p>Available offers:</p>
<?php if(sizeof($item->offers) == 0): ?><div class="alert alert-danger">
    There are currently no offers for this item.
</div><?php else: ?> 
  <table class="viewitem_offers table ">
    <tr>
      <th>Quantity</th>
      <th>Price</th>
      <th></th>
    </tr>
    <?php foreach($item->offers as $offer): ?> 
    <tr>
      <td><?php echo $offer->quantity; ?></td>
      <td><?php echo $offer->price . $currency; ?></td>
      <td><?php echo anchor('items/buy/' . $item->id, 'Buy', array('class' => 'btn btn-mini btn-success')); ?></td>
    </tr>
    <?php endforeach; ?> 
  </table>
<?php endif;?>
