<p>List URL: <?php 
  echo anchor($urls['list'], '<code>'.$urls['list'].'</code>', array(
  	'style' => 'text-decoration: none;'
  ));
?></p>
<?php if(isset($update->code)): ?>
<div class="alert alert-danger">The item list could not be retrieved. HTTP Code: <?php echo $update['code']; ?></div>
<?php else: ?>
...
<?php endif; ?> 
