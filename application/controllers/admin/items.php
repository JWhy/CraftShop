<?php

class Items extends MY_Controller {
  
  public function __construct() {
    parent::__construct();
    $this->config->load('craftshop');
    $this->load->model('minecraftitem_model', 'mcitems');
  }
  
  public function index() {
    if($this->check_admin() === true){
      
      $itemapi_cfg = $this->config->item('itemapi');
      
      $data['title'] = 'Item Database Manager';
      $data['items'] = $this->mcitems->get_all();
      $data['img_url'] = $itemapi_cfg['urls']['image'];
      
      $this->load->view('general/header', $data);
      $this->load->view('admin/items/list_items', $data);
      $this->load->view('general/footer');
    
    }
  }

}

?>
