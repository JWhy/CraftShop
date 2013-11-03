<?php

class Items extends MY_Controller {
  
  private $currency = '$%u';
  
  public function __construct() {
    parent::__construct();
    $this->config->load('craftshop');
    $this->load->model('mcitem_model', 'mcitems');
    
    $ic_cfg = $this->config->item('iconomy');
    $this->currency = $ic_cfg['currency'];
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
      
      $item = $this->mcitems->get_item($item_id, $damage, true);
      if(! $item){
        $this->session->set_flashdata('notice', "The specified item (ID: $item_id, Data: $damage) could not be found;");
        return (redirect('items'));
      }else{
        $itemapi_cfg = $this->config->item('itemapi');
        $iconomy_cfg = $this->config->item('iconomy');
        
        $data['title'] = $item->name;
        $data['item'] = $item;
        $data['currency'] = $iconomy_cfg['currency'];
        $data['img_url'] = $itemapi_cfg['urls']['local_image'];
        
        $this->load->view('general/header', $data);
        $this->load->view('items/view_item', $data);
        $this->load->view('general/footer');
      
      }
    }
  }
  
  public function buy($id = false, $quantity = 1) {
    if(! $id){
      //No item id specified in URL
      $this->session->set_flashdata('notice', 'You didn\'t specify an item to buy.');
      return (redirect('items'));
    }else{
      //Item id specified
      $this->load->model('itemoffer_model', 'offers');
      $offer = $this->offers->get($id);
      if(sizeof($offer) == 0){
        //Item id does not exist
        $this->session->set_flashdata('notice', 'The specified item does not exist.');
        return (redirect('items'));
      }else{
        //Item id exists
        $price = $offer->price * $quantity;
        
        //Load 'user interaction' related libraries
        $this->load->library('ion_auth');
        $this->load->library('jsonapi', $this->config->item('jsonapi'));
        
        //Gather user balance
        $user = $this->ion_auth->get_loggedin_user();
        $profile = $this->jsonapi->get_basic_profile($user->username);
        $balance = $profile['balance'];
        
        //Create localized currency strings
        $s_balance = sprintf($this->currency, $balance);
        $s_price = sprintf($this->currency, $price);
        
        if($balance < $price){
          $this->session->set_flashdata('notice', "You cannot effort this. The requested
              product costs $s_price, but you only have $s_balance.");
          return (redirect('items'));
        }
      }
    }
  }

}

?>
