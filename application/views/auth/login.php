<h1><?php echo lang('login_heading');?></h1>
<p><?php echo lang('login_subheading');?></p>

<?php if(isset($message) && strlen($message) > 0): ?>
<div id="infoMessage" class="alert alert-error"><?php echo $message;?></div>
<?php endif;?>
<?php echo form_open("auth/login", array(
    'class' => 'login-form',
    'style' => 'width: 313px; position: static; margin-top: 2em;'
));?> 

<div class="control-group">
  <?php echo form_input(array_merge($identity, array(
    'name' => 'username',
  	'class' => 'login-field',
    'placeholder' => 'Username',
    'id' => 'login-name'
  ))); ?> 
  <label class="login-field-icon fui-user" for="login-name"></label>
</div>

<div class="control-group">
  <?php echo form_password(array_merge($identity, array(
    'name' => 'password',
  	'class' => 'login-field',
    'placeholder' => 'Password',
    'id' => 'login-pass'
  ))); ?> 
  <label class="login-field-icon fui-lock" for="login-pass"></label>
</div>

<?php echo form_submit(array(
    'value' => lang('login_submit_btn'),
    'class' => 'btn btn-primary btn-large btn-block'
)); ?> 
<?php echo anchor('auth/forgot_password', lang('login_forgot_password'), array('class' => 'login-link')); ?> 

<?php echo form_close();?> 
