<?php

class MY_Controller extends CI_Controller{

  protected function check_admin() {
    if(! $this->ion_auth->logged_in()){
      redirect('auth/login', 'refresh');
      return (false);
    }elseif(! $this->ion_auth->is_admin()){
      return show_error('You must be an administrator to view this page.');
    }else{
      return (true);
    }
  }
  
}
