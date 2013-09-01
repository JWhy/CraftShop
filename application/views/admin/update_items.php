<p>List URL: <?php 
  echo anchor($urls['list'], '<code>'.$urls['list'].'</code>', array(
  	'style' => 'text-decoration: none;'
  ));
?></p>
<p>Image destination directory: <code><?php echo $img_dest; ?></code>
<?php if(isset($update->code)): ?>
  <div class="alert alert-danger">The item list could not be retrieved. HTTP Code: <?php echo $update['code']; ?></div>
<?php else: ?>
  <p>
    Database: <b><?php echo $db_status['updated']; ?></b> new items inserted,
    <b><?php echo $db_status['skipped']; ?></b> skipped.
  </p>
  <p>
    Images: <b><?php echo $img_status['updated']; ?></b> saved,
    <b><?php echo $img_status['skipped']; ?></b> skipped.
  </p>
  <p><?php echo anchor('admin', 'Back to Admin Panel'); ?></p>
<?php endif; ?> 
