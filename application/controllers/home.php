<?php

if(! defined('BASEPATH'))
  exit('No direct script access allowed');

class Home extends CI_Controller {
  
  public function index() {
    $data['title'] = 'Home';
    $this->load->view('general/header', $data);
    $this->load->view('home/index', $data);
    $this->load->view('general/footer');
  }
  
  public function e404() {
    $data['title'] = 'Page Not Found';
    $this->load->view('general/header', $data);
    $this->load->view('home/404', $data);
    $this->load->view('general/footer');
  }

}
