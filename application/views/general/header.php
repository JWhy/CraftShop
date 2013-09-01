<?php 
  $user = $this->ion_auth->get_loggedin_user();
  $loggedin = $this->ion_auth->logged_in();
  $name = ($loggedin && strlen($user->first_name) != 0)
    ? $user->first_name . ' ' . $user->last_name
    : $user->username;
?><!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title><?php isset($title) ? print $title : print 'Page'; ?> · CraftShop</title>
  <?php echo link_tag('assets/bootstrap/css/bootstrap.css'); ?> 
  <?php echo link_tag('assets/css/flat-ui.css'); ?> 
  <?php echo link_tag('assets/css/app.css'); ?> 
</head>
<body>
  <div class="container">

    <div class="row">
      <div class="navbar navbar-inverse" id="main_nav">
        <div class="navbar-inner">
          <ul class="nav">
            <li <?php if($this->uri->uri_string() == '') echo 'class="active"'; ?>><?php echo anchor("/", "Home"); ?></li>
            <li <?php if($this->uri->uri_string() == 'shop') echo 'class="active"'; ?>><?php echo anchor("shop", "Shop"); ?></li>
          </ul>
          <ul class="nav pull-right">
            <?php if($this->ion_auth->logged_in()): ?> 
            <li <?php if($this->uri->uri_string() == 'profile') echo 'class="active"'; ?>>
              <a href="#"><?php echo $name; ?></a> 
              <ul class="dropdown-menu">
                <?php if($this->ion_auth->is_admin()): ?><li><?php echo anchor('admin', 'Admin Panel')?></li><?php endif; ?> 
                <li><?php echo anchor('profile', 'Your Profile'); ?></li>
                <li><?php echo anchor('auth/logout', 'Logout'); ?></li>
              </ul>
            </li>
            <?php else: ?> 
            <li <?php if($this->uri->uri_string() == 'auth/login') echo 'class="active"'; ?>><?php echo anchor("auth/login", "Login"); ?></li>
            <?php endif; ?>
          </ul>
        </div>
      </div>
    </div>

    <div class="row page-content">
      <?php if(!@$hide_heading): ?>
      <h1><?php isset($title) ? print $title : print 'CraftShop'; ?></h1><?php endif;?> 