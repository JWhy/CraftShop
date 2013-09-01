<?php

class Home extends MY_Controller {
  
  public function index() {
    if($this->check_admin() === true){
      
      $data['title'] = 'Admin Panel';
      
      $this->load->view('general/header', $data);
      $this->load->view('admin/index', $data);
      $this->load->view('general/footer');
    
    }
  }
  
  public function update_items() {
    if($this->check_admin() === true){
      
      $this->config->load('craftshop');
      $itemapi_cfg = $this->config->item('itemapi');
      $this->load->library('itemapi', $itemapi_cfg);
      $this->load->model('minecraftitem_model', 'mcitems');
      
      $data['urls'] = $this->itemapi->getUrls();
      $data['update'] = $this->itemapi->getList(true);
      
      $db_status = $this->mcitems->apply_update($data['update']->data->data);
      $updated_imgs = $this->itemapi->updateImages($data['urls']['image'], $itemapi_cfg['local_img_path']);

      $data['db_status'] = $db_status;
      $data['img_status'] = $updated_imgs;
      $data['img_dest'] = $itemapi_cfg['local_img_path'];
      $data['title'] = 'Update Items';
      $this->load->view('general/header', $data);
      $this->load->view('admin/update_items', $data);
      $this->load->view('general/footer');
      
    }
  }
  
}

?>
