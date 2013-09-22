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
      
      $data['title'] = 'Item Shop';
      $data['items'] = $this->mcitems->get_all();
      $data['img_url'] = $itemapi_cfg['urls']['local_image'];
      
      $this->load->view('general/header', $data);
      $this->load->view('items/list_items', $data);
      $this->load->view('general/footer');
    
    }
  }
  
  public function view($item_id = false, $damage = false) {
    if($item_id === false || $damage === false){
      $this->session->set_flashdata('notice', 'You didn\'t specify an item to view.');
      return (redirect('items'));
    }else{
      
      $item = $this->mcitems->get_item($item_id, $damage);
      if(! $item){
        $this->session->set_flashdata('notice', "The specified item (ID: $item_id, Data: $damage) could not be found;");
        return (redirect('items'));
      }else{
        
        $itemapi_cfg = $this->config->item('itemapi');
        
        $data['title'] = $item->name;
        $data['item'] = $item;
        $data['img_url'] = $itemapi_cfg['urls']['local_image'];
        
        $this->load->view('general/header', $data);
        $this->load->view('items/view_item', $data);
        $this->load->view('general/footer');
      
      }
    }
  }

}

?>
