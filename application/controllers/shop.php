<?php

if(! defined('BASEPATH'))
  exit('No direct script access allowed');

class Shop extends CI_Controller {
  
  public function __construct() {
    parent::__construct();
    //$this->load->model('minecraftitem_model', 'mcitems');
  }
  
  public function index() {
    $data['title'] = 'Shop';
    $this->load->view('general/header', $data);
    $this->load->view('shop/index', $data);
    $this->load->view('general/footer');
  }

}

?>