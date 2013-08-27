<?php

if(! defined('BASEPATH'))
  exit('No direct script access allowed');

class Profile extends CI_Controller {
  
  public function index() {
    $user = $this->ion_auth->user()->row();
    if($user == null) $user = $this->ion_auth->getGuestUser(); 
    
    $this->config->load('craftshop');
    $profile = array();
    if($this->ion_auth->logged_in()){
      $this->load->library('jsonapi', $this->config->item('jsonapi'));
      $profile = $this->jsonapi->getBasicProfile($user->username);
    }else{
      $profile['name'] = $user->username;
      $profile['balance'] = 0;
    }
    
    
    $data['title'] = 'Profile';
    $data['mcuser'] = $profile;
    $data['user'] = $profile;
    
    $this->load->view('general/header', $data);
    $this->load->view('profile/index', $data);
    $this->load->view('general/footer');
  }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */